# CertDump

[![Build](https://img.shields.io/azure-devops/build/secana/CertDump/3.svg)](https://dev.azure.com/secana/CertDump/_build?definitionId=3)

Cross-Platform tool to dump the signing certificate from a Portable Executable (PE) file.

## Get CertDump

There are different ways to obain *CertDump*. Please check, which works for your operating system.

### Github release

You find the latest *Windows* binaries under the [Release](https://github.com/secana/CertDump/releases) page.

### Dotnet Global Tool

You can install the latest version as a [dotnet global tool](https://docs.microsoft.com/en-us/dotnet/core/tools/global-tools). The tool runs on *Windows*, *Linux* and *MacOs*.

```powershell
# install CertDump
dotnet tool install -g CertDump

# update CertDump
dotnet tool update -g CertDump

# deinstall CertDump
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

Tag a release commit with: `git tag -a v1.0.0 -m "CertDump v1.0.0`. 

Push the tag to the origin: `git push origin v1.0.0`

Replace the version number with the one to use.