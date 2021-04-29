# Documentation

 ## Get started
 * cd terraform
 * terraform init
 * ENTER your bucket name and aws region in ./terraform/variables.tf
 * ENTER yout bucket name in ./deploy/base_deploy.sh
 * terraform apply
 * add this script to 'package.json -> scripts':
 ```javascript
 deploy": "./deploy/staging.sh"
```


 
