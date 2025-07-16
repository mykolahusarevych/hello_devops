#!/bin/bash

# --- Настройки ---

# Что бэкапим (по умолчанию корень проекта, но можно передавать как аргумент)
SOURCE_DIR=${1:-"../"}

# Куда сохраняем архивы
BACKUP_DIR="$(cd "$(dirname "$0")/../backups" && pwd)"

# Имя архива (дата и имя папки)
DATE=$(date +%F_%H-%M-%S)
ARCHIVE_NAME="backup_${DATE}.tar.gz"

# --- Логика ---

# Создать папку для бэкапов, если нет
mkdir -p "$BACKUP_DIR"

# Архивировать папку
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" -C "$SOURCE_DIR" .

echo "Бэкап папки $SOURCE_DIR завершён: $BACKUP_DIR/$ARCHIVE_NAME"

# Удалить архивы старше 30 дней
find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +30 -exec rm {} \;
