#!/bin/bash

set -x

kind load docker-image quay.io/datawire/ambassador:0.75.0 && \
    kind load docker-image quay.io/datawire/tour:ui-0.2.6 && \
    kind load docker-image quay.io/datawire/tour:backend-0.2.6

