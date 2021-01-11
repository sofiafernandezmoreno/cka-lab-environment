# Kubernetes CKA Example Environments


## Setup and Run
You will start a three node cluster on your machine, one master and two workers. For this you need to install VirtualBox and vagrant, then:


```
$ cd /cluster
$ ./up.sh

$ vagrant ssh cluster1-master1

vagrant@cluster1-master1:~$ sudo -i
root@cluster1-master1:~# kubectl get nodes
```

You should be connected as `root@cluster1-master1`. You can connect to other worker nodes using root, like ssh `root@cluster1-worker1`
If you want to destroy the environment again run `./down.sh`. You should destroy the environment after usage so no more resources are used!

If you want to update kubelet and kubeadm version you have to change `install-master.sh` and `install-kube.sh`.

### Resources on RHEL 7.8

* https://www.vagrantup.com/
* https://www.virtualbox.org/
* https://www.vagrantup.com/docs/providers/virtualbox/usage