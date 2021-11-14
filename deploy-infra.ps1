$stackName = 'fm-cen-fin'

aws cloudformation deploy `
    --template-file infra.yml `
    --stack-name $stackName `
    --capabilities CAPABILITY_NAMED_IAM `
    --parameter-overrides `
    VpcCIDR=20.20.0.0/16 `
    SubnetPublicCIDR=20.20.1.0/24 `
    SubnetPrivateCIDR=20.20.2.0/24 `
    HttpAllowCIDR=97.126.96.11/32 `
    ElasticBeanstalkAppName=quote-server `
    S3BucketName=quoteserverbuilds `
    RepoName=quote-server