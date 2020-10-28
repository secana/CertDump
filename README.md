# CertDump

[![Build](https://img.shields.io/azure-devops/build/secana/CertDump/3.svg)](https://dev.azure.com/secana/CertDump/_build?definitionId=3)

Cross-Platform tool to dump the signing certificate from a Portable Executable (PE) file.

## Get CertDump

There are different ways to obtain _CertDump_. Please check, which works for your operating system.

## Winget

The easiest ways to install _CertDump_ is with _winget_.

```powershell
winget install secana.CertDump
```

### Github release

You find the latest _Windows_ binaries under the [Release](https://github.com/secana/CertDump/releases) page.

### Dotnet Global Tool

You can install the latest version as a [dotnet global tool](https://docs.microsoft.com/en-us/dotnet/core/tools/global-tools). The tool runs on _Windows_, _Linux_ and _MacOs_.

```powershell
# install CertDump
dotnet tool install -g CertDump

# update CertDump
dotnet tool update -g CertDump

# uninstall CertDump
dotnet tool uninstall -g CertDump
```

The tool is automatically added to your path. Just run `certdump` from your shell. Example:

```powershell
# Run CertDump
> certdump -help
CertDump 1.1.1
Copyright (C) 2019 CertDump

  -f, --file    Required. Input file to dump the certificate from.

  -o, --out     (Default: cert.dump) Output file to dump the certificate to.

  --help        Display this help screen.

  --version     Display version information.
```

## Release new version

A new version is automatically released from the `master` branch when a `git tag` is discovered.

Tag a release commit with: `git tag -a v1.0.0 -m "CertDump v1.0.0"`.

Push the tag to the origin: `git push origin v1.0.0`

Replace the version number with the one to use.

### Winget

It's not possible to automate the _winget_ release at the moment. To release a new version, a new manifest file needs to be published manually to [winget-pkgs certdump](https://github.com/microsoft/winget-pkgs/tree/master/manifests/secana/CertDump).
