#!/bin/bash

# Получаем сегодняшнюю дату в формате ГГГГ-ММ-ДД
DATE=$(date +%F)

# Если файл отчёта существует — архивируем
if [ -f reports/sys_report.txt ]; then
    zip reports/sys_report_$DATE.zip reports/sys_report.txt
    echo "Архив создан: sys_report_$DATE.zip"
else
    echo "Файл sys_report.txt не найден!"
fi
