Remove-Item -path ./client -recurse
& java -jar swagger-codegen-cli-2.4.5.jar generate -i https://api.cloudmersive.com/swagger/api/convert -l bash -o client -c packageconfig.json
(Get-Content ./client/cloudmersive-cli).replace('host=""', 'host="https://api.cloudmersive.com"') | Set-Content ./client/cloudmersive-cli


Copy-Item ./client/README.md ./README.md