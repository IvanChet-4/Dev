<h1>Homework 8-3 </h1> <br>
<br>
<br>

# Домашнее задание к занятию «Безопасность в облачных провайдерах»  

Используя конфигурации, выполненные в рамках предыдущих домашних заданий, нужно добавить возможность шифрования бакета.

---
## Задание 1. Yandex Cloud   

1. С помощью ключа в KMS необходимо зашифровать содержимое бакета:

 - создать ключ в KMS;
 - с помощью ключа зашифровать содержимое бакета, созданного ранее.
2. (Выполняется не в Terraform)* Создать статический сайт в Object Storage c собственным публичным адресом и сделать доступным по HTTPS:

 - создать сертификат;
 - создать статическую страницу в Object Storage и применить сертификат HTTPS;
 - в качестве результата предоставить скриншот на страницу с сертификатом в заголовке (замочек).

Полезные документы:

- [Настройка HTTPS статичного сайта](https://cloud.yandex.ru/docs/storage/operations/hosting/certificate).
- [Object Storage bucket](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/storage_bucket).
- [KMS key](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/kms_symmetric_key).


### <h4>Решение</h4>

### tf files:   <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW8-3/main.tf> <br>
<https://github.com/IvanChet-4/Dev/blob/main/HW8-3/provider.tf> <br>
<https://github.com/IvanChet-4/Dev/blob/main/HW8-3/variables.tf> <br>

### Контент для bucket:   <br>

<https://github.com/IvanChet-4/Dev/blob/main/HW8-3/index.html> <br>
<https://github.com/IvanChet-4/Dev/blob/main/HW8-3/images3242.png> <br>

### screenshots:   <br>

### terraform init:
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-1.jpg)
### terraform plan:
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-2.jpg)
### terraform apply:
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-3.jpg)
### Симметричный ключ:
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-4.jpg)
### Применение симметричного ключа:
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-5.jpg)
### Генерация сертификата:
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-6.jpg)
### Добавление сертификата:
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-7.jpg)
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-8.jpg)
### Добавление домена в Cloud-DNS:
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-9.jpg)
### Применение сертификата для https:
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-10.jpg)
### Результат:
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-11.jpg)
### Доп. пример моей тестовой vpc на beget с прикрученным сертификатом от Lets Encrypt:
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-12.jpg)
![Результат решения задачи 1](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%208-3/1-13.jpg)





--- 
## Задание 2*. AWS (задание со звёздочкой)

Это необязательное задание. Его выполнение не влияет на получение зачёта по домашней работе.

**Что нужно сделать**

1. С помощью роли IAM записать файлы ЕС2 в S3-бакет:
 - создать роль в IAM для возможности записи в S3 бакет;
 - применить роль к ЕС2-инстансу;
 - с помощью bootstrap-скрипта записать в бакет файл веб-страницы.
2. Организация шифрования содержимого S3-бакета:

 - используя конфигурации, выполненные в домашнем задании из предыдущего занятия, добавить к созданному ранее бакету S3 возможность шифрования Server-Side, используя общий ключ;
 - включить шифрование SSE-S3 бакету S3 для шифрования всех вновь добавляемых объектов в этот бакет.

3. *Создание сертификата SSL и применение его к ALB:

 - создать сертификат с подтверждением по email;
 - сделать запись в Route53 на собственный поддомен, указав адрес LB;
 - применить к HTTPS-запросам на LB созданный ранее сертификат.

Resource Terraform:

- [IAM Role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role).
- [AWS KMS](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key).
- [S3 encrypt with KMS key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_object#encrypting-with-kms-key).

Пример bootstrap-скрипта:

```
#!/bin/bash
yum install httpd -y
service httpd start
chkconfig httpd on
cd /var/www/html
echo "<html><h1>My cool web-server</h1></html>" > index.html
aws s3 mb s3://mysuperbacketname2021
aws s3 cp index.html s3://mysuperbacketname2021
```

### Правила приёма работы

Домашняя работа оформляется в своём Git репозитории в файле README.md. Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.
Файл README.md должен содержать скриншоты вывода необходимых команд, а также скриншоты результатов.
Репозиторий должен содержать тексты манифестов или ссылки на них в файле README.md.
