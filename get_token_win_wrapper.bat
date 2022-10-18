@Echo off
powershell -Command "Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser"
powershell .\get_codeartifact_token.ps1
powershell -Command "Set-ExecutionPolicy -ExecutionPolicy Default -Scope CurrentUser"