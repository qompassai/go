# quickstart.ps1
# Qompass AI - [Add description here]
# Copyright (C) 2025 Qompass AI, All rights reserved
# ----------------------------------------
$Env:GO111MODULE = "on"
$Env:GOPATH = "$HOME\.go"
$Env:GOBIN  = "$Env:GOPATH\bin"
$Env:PATH += ";$Env:GOBIN"

Write-Host "🔧 Installing Go tools for PowerShell..."

$GoTools = @(
  "github.com/bradfitz/apicompat@latest"
  "github.com/go-delve/delve/cmd/dlv@latest"
  "github.com/golangci/golangci-lint/cmd/golangci-lint@latest"
  "github.com/getsops/sops/v3/cmd/sops@latest"
)

foreach ($tool in $GoTools) {
  Write-Host "→ Installing $tool"
  go install $tool
}

