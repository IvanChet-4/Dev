Для выполнения работы 8-2 еще необходим файл terraform.tfvars в котором будут определены: <br>
yandex_token = "" <br>
cloud_id     = "" <br>
folder_id    = "" <br>
service_account_id = "" <br>
 <br> <br>

Понадобилась настройка доступа: <br>
yc resource-manager cloud add-access-binding ID-Cloud \ <br>
  --role admin \ <br>
  --subject serviceAccount:ID <br>
