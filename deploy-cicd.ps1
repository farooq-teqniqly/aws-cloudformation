$stackName = 'fm-cen-cicd'

aws cloudformation deploy `
    --template-file cicd.yml `
    --stack-name $stackName `
    --capabilities CAPABILITY_NAMED_IAM `
    --parameter-overrides `
        S3BucketName=debvuilds `
        RepoName=quote-server