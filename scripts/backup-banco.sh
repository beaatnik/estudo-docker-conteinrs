#!/bin/bash
# Script para fazer backup do banco de dados MySQL

echo "Iniciando backup do banco de dados..."

mkdir -p backups

BACKUP_FILE="backups/backup-escola-$(date +%Y%m%d-%H%M%S).sql"

docker exec mysql-estudos mysqldump -u aluno -paluno123 escola > $BACKUP_FILE

echo "Backup concluído: $BACKUP_FILE"

echo "Backups disponíveis:"
ls -la backups/
