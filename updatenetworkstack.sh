aws cloudformation update-stack --stack-name Vijiproj2 --template-body file://VijiProj2Network.yml  --parameters file://VijiProj2network-parameters.json --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1