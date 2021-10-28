$stackName = 'fm-cen-infra'

aws cloudformation deploy `
    --template-file infra.yml `
    --stack-name $stackName `
    --parameter-overrides `
    VpcCIDR=20.20.0.0/16 `
    SubnetPublicCIDR=20.20.1.0/24 `
    SubnetPrivateCIDR=20.20.2.0/24 `
    HttpAllowCIDR=97.113.30.50/32 `
    ElasticBeanstalkAppName=quote-server