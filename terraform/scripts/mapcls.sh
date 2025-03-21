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

echo "completed."
