#/usr/bin/zsh
yc resource-manager folder add-access-binding $RESOURCE_ID \
	--role editor \
	--subject serviceAccount:$SERVICE_ACCOUNT_ID


