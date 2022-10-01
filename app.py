#!/usr/bin/env python3
import aws_cdk as cdk
from my_pipeline.my_pipeline_stack import MyPipelineStack

ACCOUNT="928141648496"
app = cdk.App()
MyPipelineStack(app, "MyPipelineStack", 
    env=cdk.Environment(account=ACCOUNT, region="eu-west-1")
)

app.synth()

