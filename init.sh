#!/usr/bin/env bash
set -ex

. set_env.sh
/bin/rm -fR .venv
python3 -m venv .venv

source .venv/bin/activate
pip install --upgrade pip
python -m pip install -r requirements.txt

#cdk bootstrap aws://${AWS_ACCOUNT}/${AWS_REGION} --profile ADMIN-PROFILE \
cdk bootstrap aws://${AWS_ACCOUNT}/${AWS_REGION} \
    --cloudformation-execution-policies arn:aws:iam::aws:policy/AdministratorAccess \
    --trust ${AWS_ACCOUNT}

# cdk bootstrap "aws://928141648496/eu-west-1"


