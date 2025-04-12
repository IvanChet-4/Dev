node_exporter установил и настроил на хосте. <br>
 <br>
prometheus и grafana развернул в docker, в конфигурации prometheus указан IP адрес принадлежащий интерфейсу docker0  <br>

 <br>
  <br>
   <br>
    <br>

К заданию 2: <br>
 <br>
Загрузка CPU за 1, 5, 15 минут <br>
node_load15 <br>
node_load5 <br>
node_load1 <br>
 <br>
Для отображения в виде Guage <br>
node_load1{} <br>
node_load5{} <br>
node_load15{} <br>
 <br>
Утилизация CPU (в процентах) <br>
100 - (avg by (instance) (rate(node_cpu_seconds_total{mode="idle"}[1m])) * 100)         <br>            node_load1{instance="node_exporter:9100"} <br>
 <br>
Количество места на файловой системе <br>
node_filesystem_avail_bytes{mountpoint="/"} / 1024 / 1024 <br>
 <br>
Количество свободной оперативной памяти <br>
node_memory_MemAvailable_bytes / 1024 / 1024 <br>
 <br>
Свободное место на файловой системе <br>
node_filesystem_avail_bytes{mountpoint="/"} <br>
 <br>
Свободная оперативная память <br>
node_memory_MemFree_bytes{} <br>
