#!/bin/bash

# Hotfix: corrige permisos de /opt/deploy-app/logs
# Detectado en producción — ticket #42

chmod 770 /opt/deploy-app/logs

chown devops-deploy:deploy-team /opt/deploy-app/logs

echo "[$(date)] Permisos de logs corregidos" >> /var/log/hotfix.log
