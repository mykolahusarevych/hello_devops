# Hello DevOps!
Это мой первый тестовый проект для портфолио DevOps.

## Структура проекта

- `scripts/` — bash-скрипты автоматизации
- `reports/` — все отчёты и архивы (игнорируется в git)
- `crontab.txt` — пример задания cron
- `README.md` — описание проекта

## Как использовать

1. Запусти скрипт сбора информации:
```
bash scripts/sys_info.sh
```

2. Архивируй отчёт:
```
bash scripts/archive_report.sh
```

## Автоматизация через cron
Чтобы скрипт запускался автоматически каждый день, используйте пример из файла `crontab.txt`:

```
0 8 * * * /path/to/your/project/hello_devops/scripts/sys_info.sh
1 8 * * * /path/to/your/project/hello_devops/scripts/archive_report.sh
```

Замените `/path/to/your/project` на свой актуальный путь.

Добавить строку в crontab можно через команду: 
```crontab -e```
