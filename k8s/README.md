# Kubernetes with Terraform

## Setup
1. Run `sudo kubeadm init --config kube-config.yml`
1. Run the commands that the output tells you to run
1. `sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml`
1. `kubectl taint nodes --all node-role.kubernetes.io/master-`
