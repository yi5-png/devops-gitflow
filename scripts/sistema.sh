#!/bin/bash

echo "=== Estado del sistema ==="

echo ""
echo "CPU:"
top -bn1 | head -5

echo ""
echo "Memoria:"
free -h

echo ""
echo "Disco:"
df -h

echo ""
echo "Backup..."
mkdir -p backups
tar -czf backups/backup-$(date +%F-%H%M).tar.gz /etc 2>/dev/null

echo ""
echo "Limpieza de logs viejos..."
find /var/log -type f -name "*.log" -mtime +7 -delete 2>/dev/null

echo ""
echo "Proceso finalizado."
