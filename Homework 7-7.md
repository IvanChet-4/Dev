<h1>Homework 7-7 </h1> <br>
<br>
<br>

# Домашнее задание к занятию «Хранение в K8s. Часть 2»

### Цель задания

В тестовой среде Kubernetes нужно создать PV и продемострировать запись и хранение файлов.

------

### Чеклист готовности к домашнему заданию

1. Установленное K8s-решение (например, MicroK8S).
2. Установленный локальный kubectl.
3. Редактор YAML-файлов с подключенным GitHub-репозиторием.

------

### Дополнительные материалы для выполнения задания

1. [Инструкция по установке NFS в MicroK8S](https://microk8s.io/docs/nfs). 
2. [Описание Persistent Volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/). 
3. [Описание динамического провижининга](https://kubernetes.io/docs/concepts/storage/dynamic-provisioning/). 
4. [Описание Multitool](https://github.com/wbitt/Network-MultiTool).

------

### Задание 1

**Что нужно сделать**

Создать Deployment приложения, использующего локальный PV, созданный вручную.

1. Создать Deployment приложения, состоящего из контейнеров busybox и multitool.
2. Создать PV и PVC для подключения папки на локальной ноде, которая будет использована в поде.
3. Продемонстрировать, что multitool может читать файл, в который busybox пишет каждые пять секунд в общей директории. 
4. Удалить Deployment и PVC. Продемонстрировать, что после этого произошло с PV. Пояснить, почему.
5. Продемонстрировать, что файл сохранился на локальном диске ноды. Удалить PV.  Продемонстрировать что произошло с файлом после удаления PV. Пояснить, почему.
5. Предоставить манифесты, а также скриншоты или вывод необходимых команд.


<h4>Решение</h4>

yaml:   <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-7/Z1/deployment.yaml> <br>
<https://github.com/IvanChet-4/Dev/blob/main/HW7-7/Z1/local-pv.yaml> <br>
<https://github.com/IvanChet-4/Dev/blob/main/HW7-7/Z1/local-pvc.yaml> <br>

![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-7/1-1.png)
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-7/1-2.png)


------

### Задание 2

**Что нужно сделать**

Создать Deployment приложения, которое может хранить файлы на NFS с динамическим созданием PV.

1. Включить и настроить NFS-сервер на MicroK8S.
2. Создать Deployment приложения состоящего из multitool, и подключить к нему PV, созданный автоматически на сервере NFS.
3. Продемонстрировать возможность чтения и записи файла изнутри пода. 
4. Предоставить манифесты, а также скриншоты или вывод необходимых команд.


<h4>Решение</h4>

yaml:   <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW7-7/Z2/deploy.yaml> <br>
<https://github.com/IvanChet-4/Dev/blob/main/HW7-7/Z2/man-driver-csi.yaml> <br>
<https://github.com/IvanChet-4/Dev/blob/main/HW7-7/Z2/nfs-provisioner.yaml> <br>
<https://github.com/IvanChet-4/Dev/blob/main/HW7-7/Z2/nfs-pv.yaml> <br>
<https://github.com/IvanChet-4/Dev/blob/main/HW7-7/Z2/nfs-pvc.yaml> <br>
<https://github.com/IvanChet-4/Dev/blob/main/HW7-7/Z2/nfs-sc.yaml> <br>

![Результат решения задачи 2](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-7/2-1.png)
![Результат решения задачи 2](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-7/2-2.png)
![Результат решения задачи 2](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-7/2-3.png)
![Результат решения задачи 2](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%207-7/2-4.png)

------
