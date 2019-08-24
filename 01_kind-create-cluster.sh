#!/bin/bash

set -x

kind create cluster --config kind-expose-config.yaml && \
    sudo netstat -anlp | grep LIST | grep docker
