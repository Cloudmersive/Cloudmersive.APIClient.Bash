Remove-Item -path ./client -recurse
& java -jar swagger-codegen-cli-2.4.14.jar generate -i https://api.cloudmersive.com/swagger/api/convert -l bash -o client -c packageconfig.json
(Get-Content ./client/cloudmersive-cli).replace('host=""', 'host="https://api.cloudmersive.com"') | Set-Content ./client/cloudmersive-cli
(Get-Content ./client/cloudmersive-cli).replace('header_content_type=""', 'header_content_type="application/json"') | Set-Content ./client/cloudmersive-cli
(Get-Content ./client/cloudmersive-cli).replace("if [[ -z `"$host`" ]]; then", "if 0; then") | Set-Content ./client/cloudmersive-cli

Copy-Item ./client/README.md ./README.md