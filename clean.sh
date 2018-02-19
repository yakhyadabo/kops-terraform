#!/bin/bash

kops delete cluster zeta.com --state=s3://terraform-remote-state-zeta-dev --yes

