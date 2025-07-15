#!/bin/bash
echo "===== Системный отчёт =====" > reports/sys_report.txt
echo "Дата: $(date)" >> reports/sys_report.txt
echo "Имя хоста: $(hostname)" >> reports/sys_report.txt
echo "Аптайм:" >> reports/sys_report.txt
uptime >> reports/sys_report.txt
echo "" >> reports/sys_report.txt
echo "Кто залогинен:" >> reports/sys_report.txt
who >> reports/sys_report.txt
echo "" >> reports/sys_report.txt
echo "Загрузка CPU и RAM:" >> reports/sys_report.txt
top -b -n1 | head -n 5 >> reports/sys_report.txt
echo "" >> reports/sys_report.txt
echo "Свободное место на дисках:" >> reports/sys_report.txt
df -h >> reports/sys_report.txt
