#!/bin/sh
cd ..
sudo docker build websphere-8.5.5.12-insecure-profile --tag psinfra/websphere-traditional:websphere-8.5.5.12-insecure-profile
cd websphere-8.5.5.12-insecure-profile
