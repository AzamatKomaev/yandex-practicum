#/usr/bin/zsh
yc iam key create \
	--service-account-id $SERVICE_ACCOUNT_ID \
	--folder-name default \
	--output terraform_user_key.json
