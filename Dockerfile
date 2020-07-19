from centos:8

run dnf update -y
# Otherwise coreutils conflicts with coreutils-single
run rpm --nodeps -e coreutils-single; dnf install -y coreutils
# Just to get these in an early layer before ansible runs them
run dnf groupinstall -y workstation 

run dnf install -y git python3-pip sudo
run pip3 install ansible

run mkdir ws-ansible
add . ws-ansible

workdir ws-ansible
# In its own layer
run ./run_me.sh -t base
run ./run_me.sh
