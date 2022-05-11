% Cloud Technologies CA2

**Deadline:** as displayed on Moodle

**Weight:** 30%

# Aim

You will analyze a reasonably complex system that you are familiar with (e.g. your final year project) and identify how all/some of it can be deployed on the cloud.
For the portions that can be deployed, you will design the system in CloudFormation. 

# Deliverables

## System description (10%)

A description of your system as-is in `description.txt`.
This may be taken from an interim report or project proposal.
3-5 key bullet points work.

## Plan for the cloud (20%)

Max 1-page PDF named `plan.pdf` that identifies which parts could be deployed in the cloud, which parts cannot, and the cloud components needed to do so.

## CloudFormation file (40%)

The CloudFormation file should setup resources needed.
File should be named `template.json`.
This need NOT be all the resources identified in the previous step, rather just a representative sample.

## Setup file (20%)

The setup file should create a stack from your cloudformation file, and should be called `setup.ps1`.
It should carry out any other setup activities pre/post the stack creation. 

## Teardown file (10%)

The teardown file `teardown.ps1` should remove all resources created, including calling `aws cloudformation delete-stack` on the stack created. 


# Checking your submission for compliance

Your work should be checked using the `ca2_checks.ps1` file that will check your submission for compliance with the required files and naming.
Files that are mis-named or in the wrong format will receive a zero mark.

# How to submit your work

You will submit your work by means of a plain zip file.
This will encapsulate the changes you've made relative to the starting repository in a single file.

## Creating the submission zip file

Run `.\create_submission_file.ps1`.
This will produce the file `.\ca2_submission.zip`. 

## Submission to Moodle

Submit *ONLY* your ZIP file named *exactly* `ca2_submission.zip` to Moodle.
Do not alter the filename. 

# Feedback

Summary feedback will be given on Moodle.
Verbal feedback is available on request.
