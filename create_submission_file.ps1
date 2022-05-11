#!/usr/bin/env pwsh
# create the zip file for submission

#. ./ca2_checks.ps1

$SubmitFilename="ca2_submission.zip"

Write-Host "creating file for submission..."

$exclude = @("*.zip", "cloud_technologies_ca2.md","create_submission_file.ps1","ca2_checks.ps1" )
$files = Get-ChildItem -Path '.\*' -Exclude $exclude

Compress-Archive -Force -Path $files -DestinationPath $SubmitFilename

Write-Host "submission file creation complete, ready to submit!" -ForegroundColor Green
