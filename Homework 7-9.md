<h1>Homework 7-9 </h1> <br>
<br>
<br>


# Домашнее задание к занятию «Управление доступом»

### Цель задания

В тестовой среде Kubernetes нужно предоставить ограниченный доступ пользователю.

------

### Чеклист готовности к домашнему заданию

1. Установлено k8s-решение, например MicroK8S.
2. Установленный локальный kubectl.
3. Редактор YAML-файлов с подключённым github-репозиторием.

------

### Инструменты / дополнительные материалы, которые пригодятся для выполнения задания

1. [Описание](https://kubernetes.io/docs/reference/access-authn-authz/rbac/) RBAC.
2. [Пользователи и авторизация RBAC в Kubernetes](https://habr.com/ru/company/flant/blog/470503/).
3. [RBAC with Kubernetes in Minikube](https://medium.com/@HoussemDellai/rbac-with-kubernetes-in-minikube-4deed658ea7b).

------

### Задание 1. Создайте конфигурацию для подключения пользователя

1. Создайте и подпишите SSL-сертификат для подключения к кластеру.
2. Настройте конфигурационный файл kubectl для подключения.
3. Создайте роли и все необходимые настройки для пользователя.
4. Предусмотрите права пользователя. Пользователь может просматривать логи подов и их конфигурацию (`kubectl logs pod <pod_id>`, `kubectl describe pod <pod_id>`).
5. Предоставьте манифесты и скриншоты и/или вывод необходимых команд.


<h4>Решение</h4>

yaml:   <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-9/Z1/role.yaml> <br>
<https://github.com/IvanChet-4/Dev/blob/main/HW7-9/Z1/rolebinding.yaml> <br>

![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-9/1-1.jpg)
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-9/1-2.jpg)
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-9/1-3.jpg)
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-9/1-4.jpg)

------

### Правила приёма работы

1. Домашняя работа оформляется в своём Git-репозитории в файле README.md. Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.
2. Файл README.md должен содержать скриншоты вывода необходимых команд `kubectl`, скриншоты результатов.
3. Репозиторий должен содержать тексты манифестов или ссылки на них в файле README.md.

------
