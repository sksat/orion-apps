#!/bin/bash
helm dependency update upstream
helm template \
    --namespace prometheus-operator \
    prometheus-operator \
    ./upstream > resources/upstream.yml
