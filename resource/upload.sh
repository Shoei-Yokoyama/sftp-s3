#!/bin/bash -l
aws s3 cp $1 s3://${AWS_BUCKET_NAME}
