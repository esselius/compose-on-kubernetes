#!/bin/bash

docker rm -f kind-$CLUSTER_NAME-control-plane || true

kind create cluster --name=$CLUSTER_NAME --image=jdrouet/kindest-node:$KUBE_VERSION

export KUBECONFIG=$(kind get kubeconfig-path --name=$CLUSTER_NAME)
export KUBEFILENAME=$(echo -n ${KUBECONFIG##*/})

cp $KUBECONFIG /storage/

chown $USER_ID:$GROUP_ID /storage/$KUBEFILENAME
