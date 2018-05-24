#!/bin/sh
cd ..
sudo docker build websphere-9.0.0.7-insecure-profile --tag psinfra/websphere-traditional:websphere-9.0.0.7-insecure-profile  --tag davis.wincor-nixdorf.com:8095/dn-ps-websphere-traditional:websphere-9.0.0.7-insecure-profile
cd websphere-9.0.0.7-insecure-profile
