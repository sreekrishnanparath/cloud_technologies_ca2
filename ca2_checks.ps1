#!/usr/bin/env pwsh
# CA1 checks file
# Peadar Grant

$Files = @( "description.pdf", "plan.pdf", "template.json", "setup.ps1", "teardown.ps1" )

$problems = $false
Write-Host "CA1 checks" -ForegroundColor Yellow
Foreach ( $File in $Files ) {
    Write-Host "checking for $File ... " -NoNewline
    If ( ! (Test-Path $File) ) {
	Write-Host "not found" -ForegroundColor Red
	$problems = $true
#	return
    }
    Else {
	Write-Host "found" -ForegroundColor Green
    }
}

if ( $problems ) {
    Write-Host "fix identified problems and re-run checks!" -ForegroundColor Yellow
}
Else {
    Write-Host "all required files present - ready to submit!" -ForegroundColor Green
}
