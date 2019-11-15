# Sample .NET Core Hosting with NSSM

ASP.NET Core 3 self-contained Windows hosting with [NSSM - non-sucking service manager](https://nssm.cc/).

## Rationale

.NET Core comes with "built-in" Kestrel HTTP server.

.NET Core is also have the ability for self-contained deployment,
which means that produced binaries are not dependent upon machine-level dotnet runtime.

And this is great for running .NET apps in an enironments 
to which we don't have access to (end user computers, on-premise deployment, etc.).

When hosting ASP.NET Core apps we have following options:
* IIS + Web Hosting Bundle - depends on .NET Core Runtime; IIS manages process lifecycle
* Kestrel - may be self-contained; developers must decide how to manage process lifecycle

If we choose Kestrel, then basic process management options from official documentation are:
* [Host ASP.NET Core on Linux with Nginx](https://docs.microsoft.com/en-us/aspnet/core/host-and-deploy/linux-nginx) (linux daemon for .net app used)
* [Host ASP.NET Core in a Windows Service](https://docs.microsoft.com/en-us/aspnet/core/host-and-deploy/windows-service)

This sample tries altenative Windows Service hostring approach (NSSM)
to compare with the one described in official documentation.

## Why NSSM?

It works, it's tiny, it's somewhat popular.

No extra thouht was put into the choise of service manager.

## How to use

Use `cmd.exe` or `powershell` with administrator privileges.

Service is installed into `C:\\services\api\`.

To test service open `http://localhost:5000/`.

### Build

```bash
$ build
$ cd dist\api
```

### Install

```bash
$ install
```

### Update

```bash
$ update
```

### Remove

```bash
$ install
```

## Disclaimer of liability

This repository is intented only for educational purposes and to provide proof of concept.
Production use as-is is not recommended, and have never been evaluated.
This sample comes with no warranties of any kind whatsoever,
and may not be useful for anything.  Use it at your own risk!
If these terms are not acceptable, you aren't allowed to use the code.