## Add Default environment for local testing

## prerequisites

Add Annotations to enhance the UI by following [Enhance Fiori UI](./enhance-fiori-ui.md)

1. In the root project, create a new file called `.env` and add the below content

```sh
AICORE_SERVICE_KEY='{ "clientid": "sb-6b774987-cafe-486f-9be1-d15b70f04924!b554099|aicore!b540", "clientsecret": "b196aa17-c841-42cd-a92f-e8e3ba8d5747$NAbEw5BsvtexpN-41R87hu3HiVc7xqU4rOGyc03Zyek=", "url": "https://hands-on-build-code-2b7rbjie.authentication.eu10.hana.ondemand.com", "serviceurls": {"AI_API_URL": "https://api.ai.prod.eu-central-1.aws.ml.hana.ondemand.com" }}'
```

## Next Step

[Test end to end](./e2e-testing.md)