node_exporter установил и настроил на хосте.

prometheus и grafana развернул в docker, в конфигурации prometheus указан IP адрес принадлежащий интерфейсу docker0



К заданию 2:

Загрузка CPU за 1, 5, 15 минут
node_load15
node_load5
node_load1

Для отображения в виде Guage
node_load1{}
node_load5{}
node_load15{}

Утилизация CPU (в процентах)
100 - (avg by (instance) (rate(node_cpu_seconds_total{mode="idle"}[1m])) * 100)                    node_load1{instance="node_exporter:9100"}

Количество места на файловой системе
node_filesystem_avail_bytes{mountpoint="/"} / 1024 / 1024

Количество свободной оперативной памяти
node_memory_MemAvailable_bytes / 1024 / 1024

Свободное место на файловой системе
node_filesystem_avail_bytes{mountpoint="/"}

Свободная оперативная память
node_memory_MemFree_bytes{}
