# Windows Containers

## Installation
See:
- https://docs.microsoft.com/en-us/virtualization/windowscontainers/quick-start/quick-start-windows-10
- https://docs.microsoft.com/en-us/virtualization/windowscontainers/quick-start/quick-start-windows-server

Enable containers
```powershell
Enable-WindowsOptionalFeature -Online -FeatureName containers -All
```

Enable Hyper-V
```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
```

Restart
```powershell
Restart-Computer -Force
```

Install Docker Engine
```powershell
Invoke-WebRequest "https://get.docker.com/builds/Windows/x86_64/docker-1.13.1.zip" -OutFile "$env:TEMP\docker-1.13.1.zip" -UseBasicParsing
```

Expand zip
```powershell
Expand-Archive -Path "$env:TEMP\docker-1.13.1.zip" -DestinationPath $env:ProgramFiles
```

Add the Docker directory to the system path.
```powershell
# Add path to this PowerShell session immediately
$env:path += ";$env:ProgramFiles\Docker"

# For persistent use after a reboot
$existingMachinePath = [Environment]::GetEnvironmentVariable("Path",[System.EnvironmentVariableTarget]::Machine)
[Environment]::SetEnvironmentVariable("Path", $existingMachinePath + ";$env:ProgramFiles\Docker", [EnvironmentVariableTarget]::Machine)
```

Install Docker as Windows Service
```powershell
dockerd --register-service
```

Start Docker Service
```powershell
Start-Service Docker
```

## Verification

Pull Nano server
```powershell
docker pull microsoft/nanoserver
```