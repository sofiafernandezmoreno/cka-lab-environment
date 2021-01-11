#!/bin/sh
kubeadm reset -f
sh /vagrant/tmp/master-join-command-worker-2.sh
systemctl daemon-reload
service kubelet start
