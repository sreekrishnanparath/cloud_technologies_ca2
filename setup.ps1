# Setup file
# image/video detection app
# SREEKRISHNAN

$StackName = "visiondetection"

. .\stack_output_function.ps1

# code bucket
$BucketName = "detectioncodebkt"
Write-Host "bucket name = $BucketName"

# create deployment bucket
aws s3 mb s3://$BucketName

##code here

# zipping code
Write-Host "zipping lambda code..."
if ( $IsMacOs ) {
    zip detection.zip detection.py
}
else {
    Compress-Archive -Force -Path detection.py -DestinationPath detection.zip
    # Compress-Archive will work on a Mac but permissions issues will result
}

# upload code to bucket
Write-Host "uploading code"
aws s3 cp detection.zip s3://$BucketName/detection.zip

# create main stack
Write-Host "creating stack $StackName ..."
aws cloudformation create-stack --stack-name $StackName --template-body file://template.json --parameters ParameterKey=codebucketname,ParameterValue=$BucketName 

# wait for completion
Write-Host "waiting for stack to complete ..."
aws cloudformation wait stack-create-complete --stack-name $StackName

Write-Host "done!" -ForegroundColor Green
