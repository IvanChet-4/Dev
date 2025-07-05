Для выполнения работы 8-3 еще необходим файл terraform.tfvars в котором будут определены: <br>
yandex_token = "" <br>
cloud_id     = "" <br>
folder_id    = "" <br>
service_account_id = "" <br>
 <br> <br>



 Понадобилась настройка доступа: <br>

```
yc resource-manager cloud add-access-binding ID-Cloud \
  --role admin \ <br>
  --subject serviceAccount:ID
```

<https://yandex.cloud/ru/docs/tutorials/infrastructure-management/terraform-data-sources>  <br>

Для работы provider.tf необходимо создать nano ~/.terraformrc  <br>

```
provider_installation {
  network_mirror {
    url = "https://terraform-mirror.yandexcloud.net/"
    include = ["registry.terraform.io/*/*"]
  }
  direct {
    exclude = ["registry.terraform.io/*/*"]
  }
}
```
