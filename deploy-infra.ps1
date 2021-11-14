$stackName = 'fm-cen-fin'
$appName = 'quote-server'
$httpAllowCIDR = '97.126.96.11/32'
$s3BucketName = $appName + '-builds'

aws cloudformation deploy `
    --template-file infra.yml `
    --stack-name $stackName `
    --capabilities CAPABILITY_NAMED_IAM `
    --parameter-overrides `
    VpcCIDR=20.20.0.0/16 `
    SubnetPublicCIDR=20.20.1.0/24 `
    SubnetPrivateCIDR=20.20.2.0/24 `
    HttpAllowCIDR=$httpAllowCIDR `
    ElasticBeanstalkAppName=$appName `
    S3BucketName=$s3BucketName `
    RepoName=$appName `
    QuoteServerVersion=26.17.8