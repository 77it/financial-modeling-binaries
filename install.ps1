#!/usr/bin/env pwsh
# inspired to https://github.com/denoland/deno_install/blob/v0.1.9/install.ps1
# run with powershell command     irm https://raw.githubusercontent.com/77it/financial-modeling-binaries/main/install.ps1 | iex

$ErrorActionPreference = 'Stop'

$BinDir = ".\bin"

$ConverterZip = "$BinDir\Converter.exe.gz"
$ConverterUrl = "https://github.com/77it/financial-modeling-binaries/releases/latest/download/Converter.exe.gz"

$Converter2Zip = "$BinDir\Converter2.exe.gz"
$Converter2Url = "https://github.com/77it/financial-modeling-binaries/releases/latest/download/Converter2.exe.gz"

if (!(Test-Path $BinDir)) {
  New-Item $BinDir -ItemType Directory | Out-Null
}

curl.exe -Lo $ConverterZip $ConverterUrl
tar.exe xzf $ConverterZip -C $BinDir
Remove-Item $ConverterZip

curl.exe -Lo $Converter2Zip $Converter2Url
tar.exe xzf $Converter2Zip -C $BinDir
Remove-Item $Converter2Zip

Write-Output "Programs were installed successfully to ${BinDir}"
