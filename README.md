# Hello DevOps!
Это мой первый тестовый проект для портфолио DevOps.
## Автоматизация через cron
Чтобы скрипт запускался автоматически каждый день, используйте пример из файла `crontab.txt`:

```
0 8 * * * /path/to/your/project/hello_devops/sys_info.sh
```

Замените `/path/to/your/project` на свой актуальный путь.
Добавить строку в crontab можно через команду: `crontab -e`
