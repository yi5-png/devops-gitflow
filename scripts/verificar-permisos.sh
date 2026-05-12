#!/bin/bash

echo "=== Auditoría de permisos ==="

id devops-deploy

ls -ld /opt/deploy-app/logs

stat -c "%A %U %G" /opt/deploy-app/logs
