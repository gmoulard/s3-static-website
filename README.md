



refere to: https://medium.com/@dblencowe/hosting-a-static-website-on-s3-using-terraform-0-12-aa5ffe4103e
https://github.com/rufuspollock/s3-bucket-listing



export AWS_PROFILE=default
export TF_VAR_domain_name=www.websitegmstatice.moulard.org
export TF_VAR_aws_region=eu-west-1

terraform init
terraform apply -var domain_name=www.websitegmstatice.moulard.org -var aws_region=eu-west-1
aws s3 sync dist s3://www.websitegmstatice.moulard.org

curl https://s3.eu-west-1.amazonaws.com/www.websitegmstatice.moulard.org/vdl-photo/image1.jpg
curl http://www.websitegmstatice.moulard.org.s3-website-eu-west-1.amazonaws.com/vdl-photo/image1.jpg



https://raw.githubusercontent.com/qoomon/aws-s3-bucket-browser/master/index.html > dist/listing.html
https://s3.eu-west-1.amazonaws.com/www.websitegmstatice.moulard.org/listing.html


aws s3 ls s3://www.websitegmstatice.moulard.org/vdl-photo/

