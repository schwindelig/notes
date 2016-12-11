# PowerShell

Notes based on Michael Bender's and Adam Bertrand's PowerShell courses on Pluralsight.

## Misc

### Get PowerShell version

```powershell
$PSVersionTable
```

## Help

### Updating Help

```powershell
Update-Help
```

### Get available verbs

```powershell
Get-Verb
```

 The Get-Verb function gets verbs that are approved for use in Windows PowerShell commands.

### Get help for all the things

```powershell
Get-Help
```

The Get-Help cmdlet displays information about Windows PowerShell concepts and commands, including cmdlets, functions, CIM commands, workflows, providers, aliases and scripts.

### Get help for specific command (short)

```powershell
Get-Help <command>
```

### Get help for specific command (full)

```powershell
Get-Help <command> -full
```

## Commands

### Get all commands

```powershell
Get-Command
```

The Get-Command cmdlet gets all commands that are installed on the computer, including cmdlets, aliases, functions, workflows, filters, scripts, and applications.

## Services

### Get all services

```powershell
Get-Service
```

### Wildcard

```powershell
Get-Service -DisplayName *hyper*
```

### Selective

```powershell
Get-Service -Name Fax,EFS
```

## History

### Get history for current session

```powershell
Get-History
```

### Invoke history based on Get-History ID

```powershell
Invoke-History <id>
```

The Invoke-History cmdlet runs commands from the session history. You can pass objects representing the commands from Get-History to Invoke-History , or you can identify commands in the current history by using their ID number. To find the identification number of a command, use the Get-History cmdlet.

## Members

### Get properties and methods of objects

```powershell
<command> | Get-Member
```

### Select specific properties

```powershell
<command> | select-object [<property 1>, ..., <property n>]
```

## Writing to files

### Pipe output to file

```powershell
<[command> | out-file <path to file>
```

### Capture all input and output

```powershell
Start-Transcript [path to file]
```

To stop recording, run

```powershell
Stop-Transcript
```

The Start-Transcript cmdlet creates a record of all or part of a Windows PowerShell session to a text file. The transcript includes all command that the user types and all output that appears on the console.

## Formatting

### Format-List (fl)

```powershell
<command> | Format-List
```

Formats the output as a list of properties in which each property appears on a new line.

It is possible to reduce the output to only specific fields, eg:

```powershell
Get-Service | Format-List Name, Status
```

### Format-Table (ft)

```powershell
<command> | Format-Table [-autosize] [-wrap]
```

Formats the output as a table.

see https://msdn.microsoft.com/powershell/reference/5.1/Microsoft.PowerShell.Utility/Format-Table?f=255&MSPPError=-2147217396

### Out-GridView

[todo]

## Filtering

```powershell
<command> | where <property> -<comparison operator> <value> 
```

[todo]

## Toolmaking with PowerShell

### Chaining Commands

```powershell
<command1>;<command2>
```

### Execution Policy

- **Restricted** - No scripts can be run. Windows PowerShell can be used only in interactive mode.
- **All Signed** - Only scripts signed by a trusted publisher can be run.
- **Remote Signed** - Downloaded scripts must be signed by a trusted publisher before they can be run.
- **Unrestricted** - No restrictions; all Windows PowerShell scripts can be run.

See [technet](https://technet.microsoft.com/en-us/library/ee176961.aspx) and [msdn](https://msdn.microsoft.com/en-us/powershell/reference/5.0/microsoft.powershell.core/about/about_execution_policies) for more information.

#### Get Execution Policy

```powershell
Get-ExecutionPolicy
```

#### Change Execution Policy

```powershell
Set-ExecutionPolicy <policy>
```

### Modules

#### Show loaded modules

```powershell
Get-Module
```

#### Show available modules

```powershell
Get-Module -ListAvailable
```

#### Show commands of a module

```powershell
Get-Command -Module <module>
```

### Parameters

```powershell
param($param1,$param2 = 'default value')
```

### String operations

#### Substring

```powershell
$string = "hello world"
$result = $string.Substring(0,5)
```

#### Chaining strings

```powershell
$string1 = "hello"
$string2 = "world"
$result = "$string1 $string2"
```