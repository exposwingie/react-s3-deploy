#!/bin/bash

yarn build && \
aws s3 rm s3://$BUCKET_NAME --recursive && \
aws s3 sync build/ s3://$BUCKET_NAME --acl public-read
