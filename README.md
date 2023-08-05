## Instructions
1. `terraform init` -> download providers and init project
1. `terraform validate`
1. Export login credentials:
    For powershell:
    ```
    $env:AWS_ACCESS_KEY_ID="YOUR_ACCESS_KEY"
    $env:AWS_SECRET_ACCESS_KEY="YOUR_SECRET_ACCESS_KEY"
    ```
1. `terraform apply`