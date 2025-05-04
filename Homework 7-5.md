<h1>Homework 7-5 </h1> <br>
<br>
<br>

# Домашнее задание к занятию «Сетевое взаимодействие в K8S. Часть 2»

### Цель задания

В тестовой среде Kubernetes необходимо обеспечить доступ к двум приложениям снаружи кластера по разным путям.

------

### Чеклист готовности к домашнему заданию

1. Установленное k8s-решение (например, MicroK8S).
2. Установленный локальный kubectl.
3. Редактор YAML-файлов с подключённым Git-репозиторием.

------

### Инструменты и дополнительные материалы, которые пригодятся для выполнения задания

1. [Инструкция](https://microk8s.io/docs/getting-started) по установке MicroK8S.
2. [Описание](https://kubernetes.io/docs/concepts/services-networking/service/) Service.
3. [Описание](https://kubernetes.io/docs/concepts/services-networking/ingress/) Ingress.
4. [Описание](https://github.com/wbitt/Network-MultiTool) Multitool.

------

### Задание 1. Создать Deployment приложений backend и frontend

1. Создать Deployment приложения _frontend_ из образа nginx с количеством реплик 3 шт.
2. Создать Deployment приложения _backend_ из образа multitool. 
3. Добавить Service, которые обеспечат доступ к обоим приложениям внутри кластера. 
4. Продемонстрировать, что приложения видят друг друга с помощью Service.
5. Предоставить манифесты Deployment и Service в решении, а также скриншоты или вывод команды п.4.


<h4>Решение</h4>

yaml:   <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-5/z1/backend-deployment.yaml> <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-5/z1/frontend-deployment.yaml> <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-5/z1/backend-service.yaml> <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-5/z1/frontend-service.yaml> <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-5/z1/pod-multitool.yaml> <br>

![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-5/1-1.png)

------

### Задание 2. Создать Ingress и обеспечить доступ к приложениям снаружи кластера

1. Включить Ingress-controller в MicroK8S.

![Скриншот к 1-му пункту](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-5/2-1.png)

2. Создать Ingress, обеспечивающий доступ снаружи по IP-адресу кластера MicroK8S так, чтобы при запросе только по адресу открывался _frontend_ а при добавлении /api - _backend_.
3. Продемонстрировать доступ с помощью браузера или `curl` с локального компьютера.
4. Предоставить манифесты и скриншоты или вывод команды п.2.


<h4>Решение</h4>

yaml:   <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-5/z2/backend-deployment.yaml> <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-5/z2/frontend-deployment.yaml> <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-5/z2/backend-service.yaml> <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-5/z2/frontend-service.yaml> <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-5/z2/microk8s-ingress.yaml> <br>

![Результат решения задачи 2](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-5/2-2.png)

------

### Правила приема работы

1. Домашняя работа оформляется в своем Git-репозитории в файле README.md. Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.
2. Файл README.md должен содержать скриншоты вывода необходимых команд `kubectl` и скриншоты результатов.
3. Репозиторий должен содержать тексты манифестов или ссылки на них в файле README.md.

------
