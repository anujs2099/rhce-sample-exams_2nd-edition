#!/bin/bash

echo ""
yum install python3 -y

echo ""
alternatives --set python /usr/bin/python3
