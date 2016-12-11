# PowerShell

## Misc.

### Get PowerShell version

```powershell
$PSVersionTable
```

### Get available verbs

```powershell
Get-Verb
```

### Get services

#### All services

```powershell
Get-Service
```

#### Wildcard

```powershell
Get-Service -DisplayName *hyper*
```

#### Selective

```powershell
Get-Service -Name Fax,EFS
```

### Piping into more

```powershell
Get-Help | more
```

