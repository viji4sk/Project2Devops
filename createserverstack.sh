aws cloudformation create-stack --stack-name VijiProj2Serv --template-body file://serversVijiProj2.yml  --parameters file://server-parametersVijiProj2.json --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1