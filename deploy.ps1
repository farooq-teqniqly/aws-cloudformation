$stackName = 'fm-example'

aws cloudformation deploy `
    --template-file demo.yaml `
    --stack-name $stackName `
    --parameter-overrides `
    ResourceGroup=fm-usea-example `
    VpcCIDR=20.20.0.0/16 `
    SubnetPublicCIDR=20.20.1.0/24 `
    SubnetPrivateCIDR=20.20.2.0/24 `
    HttpAllowCIDR=97.113.30.50/32 `
    ElasticBeanstalkAppName=quote-server