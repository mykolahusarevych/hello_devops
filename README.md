# Hello DevOps!
Мини-проект для освоения основных практик DevOps: автоматизация через bash-скрипты, сбор системной информации, регулярные бэкапы, cron-задачи и оформление репозитория для портфолио.

## Структура проекта

- `scripts/` — bash-скрипты автоматизации
- `reports/` — все отчёты и архивы (игнорируется в git)
- `backups/` — резервные копии проекта
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
## Бэкап папки

Скрипт архивирует выбранную папку и сохраняет архив в папке `backups`.

Запуск для бэкапа всего проекта:
```
bash scripts/backup_folder.sh
```
Запуск для бэкапа любой другой папки:
```
bash scripts/backup_folder.sh /путь/к/папке
```

Скрипт автоматически удаляет архивы старше 30 дней.

---

## Автоматизация через cron
Чтобы скрипт запускался автоматически каждый день, используйте пример из файла `crontab.txt`:

```
0 8 * * * /path/to/your/project/hello_devops/scripts/sys_info.sh
1 8 * * * /path/to/your/project/hello_devops/scripts/archive_report.sh
0 4 * * * /path/to/your/project/hello_devops/scripts/backup_folder.sh
```
# Ежедневная очистка архивов старше 7 дней в 2:00 ночи
```
0 2 * * * /path/to/your/project/hello_devops/scripts/cleanup_old_archives.sh
```

Замените `/path/to/your/project` на свой актуальный путь.

Добавить строку в crontab можно через команду: 
```crontab -e```
