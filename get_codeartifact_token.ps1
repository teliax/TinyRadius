$ACCOUNT_ID=$(aws sts get-caller-identity --query "Account" --output text)
$DOMAIN=$(aws codeartifact list-domains --page-size 1 --query domains[0].name)
$DOMAIN = $DOMAIN -replace '"',''
aws codeartifact get-authorization-token --domain $DOMAIN --domain-owner $ACCOUNT_ID --query authorizationToken --output text