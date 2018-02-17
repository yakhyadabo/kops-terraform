#!/bin/bash

kops create cluster --name zeta.com \                                          
  --state=s3://terraform-remote-state-zeta-dev\
  --zones=us-west-2a,us-west-2b,us-west-2c \
  --master-zones=us-west-2a,us-west-2b,us-west-2c \
  --networking=calico \
  --kubernetes-version=1.8.6 \
  --master-count=3 \
  --dns=private \
  --master-size=t2.medium \
  --node-size=t2.medium \
  --cloud-labels="project:name=kops_terraform,project:environment=Development" \
  --cloud=aws \
  --topology=public \
  --network-cidr=10.10.0.0/16 \
  --associate-public-ip=false \
  --authorization=RBAC --yes
