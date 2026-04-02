#!/bin/bash

# Hardcoded values
SERVICE_INSTANCE="your-service-instance"
USER="prajin.ollekkatt.prakasan@sap.com"
ORG="PESWorkshops_btp-gp5221b62a-649d-59db-c303"

# Get the current space
CURRENT_SPACE=$(cf target | grep "Space:" | awk '{print $2}')

# Get the list of all spaces
SPACES=$(cf spaces | tail -n +4 | awk '{print $1}')

# Add user as SpaceManager to each space
for SPACE in $SPACES; do
  if [ "$SPACE" != "$CURRENT_SPACE" ]; then
    echo "Assigning $USER as SpaceManager to space $SPACE in org $ORG..."
    cf target -o "$ORG" -s "$SPACE"
    cf set-org-role "$USER" "$ORG" "$SPACE" SpaceManager
  fi
done

# Share the service instance with each space
for SPACE in $SPACES; do
  if [ "$SPACE" != "$CURRENT_SPACE" ]; then
    echo "Sharing service instance $SERVICE_INSTANCE with space $SPACE in org $ORG..."
    cf target -o "$ORG" -s "$SPACE"
    cf share-service "$SERVICE_INSTANCE" -s "$SPACE"
  fi
done

# Reset target to original space
cf target -s "$CURRENT_SPACE"

echo "Script completed."

➜  ~ cat userrole.sh 
#!/bin/bash

# Variables
ORG_NAME="PESWorkshops_btp-gp5221b62a-649d-59db-c303-cccb657e4b63"
CSV_FILE="users.csv"
MAX_RETRIES=3
RETRY_DELAY=5  # Delay between retries in seconds

# Ensure CF CLI is logged in
if ! cf target &> /dev/null; then
  echo "You must be logged in to Cloud Foundry. Please run 'cf login' first."
  exit 1
fi

# Check if the organization exists
if ! cf orgs | grep -q "$ORG_NAME"; then
  echo "Organization '$ORG_NAME' does not exist."
  exit 1
fi

# Check if CSV file exists
if [ ! -f "$CSV_FILE" ]; then
  echo "CSV file '$CSV_FILE' not found."
  exit 1
fi

# Create a temporary file to track failed users
FAILED_USERS_FILE=$(mktemp)

# Function to assign role and log failures
assign_role() {
  local user_email=$1
  local org_name=$2

  echo "Attempting to add user '$user_email' to organization '$org_name' with OrgManager role..."
  cf set-org-role "$user_email" "$org_name" OrgManager --origin pesworkshops

  if [ $? -eq 0 ]; then
    echo "User '$user_email' has been successfully assigned the OrgManager role in '$org_name'."
  else
    echo "Failed to assign the OrgManager role to '$user_email' in '$org_name'."
    echo "$user_email" >> "$FAILED_USERS_FILE"
  fi
}

# Read CSV file and assign roles
while true; do
  > "$FAILED_USERS_FILE"  # Clear the failed users file

  # Flag to track if there are failed assignments
  has_failed=false

  # Process each user
  while IFS=, read -r USER_EMAIL; do
    if [ -n "$USER_EMAIL" ]; then
      assign_role "$USER_EMAIL" "$ORG_NAME"
      if [ -s "$FAILED_USERS_FILE" ]; then
        has_failed=true
      fi
    fi
  done < "$CSV_FILE"

  # If there are failures, wait and retry
  if [ "$has_failed" = true ]; then
    echo "Retrying failed users in $RETRY_DELAY seconds..."
    sleep $RETRY_DELAY
  else
    echo "All users have been successfully assigned roles."
    break
  fi
done

# Clean up
rm "$FAILED_USERS_FILE"