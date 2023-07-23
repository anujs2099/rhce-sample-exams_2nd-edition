#!/bin/bash

sudo -u ansible bash << EOF
echo ""
whoami

echo ""
ssh-keygen

echo ""
ssh-copy-id ansible1.example.com

echo ""
ssh-copy-id ansible2.example.com

EOF
