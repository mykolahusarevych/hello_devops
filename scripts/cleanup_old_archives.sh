#!/bin/bash

# Папка с архивами
ARCHIVE_DIR="reports"

# Удаляем все zip-файлы старше 7 дней
find "$ARCHIVE_DIR" -type f -name "*.zip" -mtime +7 -exec rm {} \;

echo "Удалены все архивы старше 7 дней в $ARCHIVE_DIR"
