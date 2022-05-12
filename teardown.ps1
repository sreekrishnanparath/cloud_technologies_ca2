#!/usr/bin/env pwsh
# Teardown for Cloudformation- Image/video detection app
# SREEKRISHNAN

$StackName="visiondetection"

$CodeBucketName = ((aws cloudformation describe-stacks --stack-name "$StackName" |ConvertFrom-Json).Stacks[0].Outputs | Where-Object { $_.OutputKey -eq "codebucketname" }).OutputValue
Write-Host "Code Bucket name = $CodeBucketName"

Write-Host "emptying bucket $CodeBucketName ..."
aws s3 rm --recursive s3://$CodeBucketName/

Write-Host "deleting bucket $CodeBucketName  ..."
aws s3api delete-bucket --bucket $CodeBucketName 

Write-Host "deleting stack $StackName ..."
aws cloudformation delete-stack --stack-name $StackName

Write-Host "done!" -ForegroundColor Green
