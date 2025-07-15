#!/bin/bash
echo "===== Системный отчёт =====" > sys_report.txt
echo "Дата: $(date)" >> sys_report.txt
echo "Имя хоста: $(hostname)" >> sys_report.txt
echo "Аптайм:" >> sys_report.txt
uptime >> sys_report.txt
echo "" >> sys_report.txt
echo "Кто залогинен:" >> sys_report.txt
who >> sys_report.txt
echo "" >> sys_report.txt
echo "Загрузка CPU и RAM:" >> sys_report.txt
top -b -n1 | head -n 5 >> sys_report.txt
echo "" >> sys_report.txt
echo "Свободное место на дисках:" >> sys_report.txt
df -h >> sys_report.txt
