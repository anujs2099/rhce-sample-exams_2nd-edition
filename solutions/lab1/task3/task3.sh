#!/bin/bash

ansible-navigator --version

podman login registry.redhat.io

podman search ansible-automation | grep -i ee
podman pull registry.redhat.io/ansible-automation-platform-24/ee-supported-rhel8

ansible-navigator images

ansible-navigator inventory -i inventory --list
ansible-navigator inventory -i inventory -m stdout --list

ansible-navigator inventory -i inventory --list
vi ansible-navigator.yaml
ansible-navigator inventory -i inventory --list

