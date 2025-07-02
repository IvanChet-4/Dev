Для выполнения работы 8-1 еще необходим файл terraform.tfvars в котором будут определены: <br>
yandex_token = "" <br>
cloud_id     = "" <br>
folder_id    = "" <br>



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
