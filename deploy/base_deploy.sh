#!/bin/bash

yarn build && \
aws s3 rm s3://$FULL_BUCKET_NAME --recursive && \
aws s3 sync build/ s3://$FULL_BUCKET_NAME --acl public-read
