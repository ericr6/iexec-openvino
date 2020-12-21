#!/bin/bash
cd /opt/intel/openvino/
deployment_tools/demo/demo_security_barrier_camera.sh -d CPU -sample-options -no_show

echo "ok" >>  /iexec_out/result.txt
echo "{ \"deterministic-output-path\" : \"/iexec_out/result.txt\" }" > /iexec_out/computed.json
