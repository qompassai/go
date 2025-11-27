#!/usr/bin/env sh
# /qompassai/go/scripts/quickstart.sh
# Qompass AI Go Quick Start
# Copyright (C) 2025 Qompass AI, All rights reserved
########################################################
set -eu
GO_VERSION="go1.24.5"
GO_TOOLS="
github.com/bradfitz/apicompat@latest
github.com/canha/golang-tools-install-script@latest
golang.org/x/tools/cmd/stringer@latest
github.com/go-delve/delve/cmd/dlv@latest
github.com/go-swagger/go-swagger/cmd/swagger@latest
github.com/golangci/golangci-lint/cmd/golangci-lint@latest
github.com/mitchellh/gox@latest
github.com/securego/gosec/v2/cmd/gosec@latest
github.com/getsops/sops/v3/cmd/sops@latest
github.com/vektra/mockery/v2@latest
golang.org/x/tools/cmd/goimports@latest
golang.org/x/tools/gopls@latest
honnef.co/go/tools/cmd/staticcheck@latest
golang.org/x/tools/go/analysis/passes/buildssa@latest
golang.org/x/tools/cmd/gonew@latest
google.golang.org/protobuf/cmd/protoc-gen-go@latest
google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
github.com/cloudflare/circl/cmd/circl@latest
github.com/crazy-max/xgo@latest
github.com/hexops/zgo/cmd/zgo@latest
golang.org/x/text/cmd/gotext@latest
"
LOCAL_PREFIX="$HOME/.local"
BIN_DIR="${LOCAL_PREFIX}/bin"
CONFIG_DIR="$HOME/.config/go"
GOPATH="${HOME}/.go"
GOBIN="${GOPATH}/bin"
GOCACHE="${HOME}/.cache/go-build"
GOMODCACHE="${HOME}/.cache/go-mod"
GOENV="${HOME}/.config/go/env"
export GOPATH GOBIN GOCACHE GOMODCACHE GOENV
mkdir -p "$BIN_DIR" "$CONFIG_DIR" "$GOBIN" "$GOCACHE" "$GOMODCACHE"
PATH="$BIN_DIR:$GOBIN:$PATH"
export PATH
print_info() { printf "\033[0;32m[INFO]\033[0m %s\n" "$1"; }
print_warn() { printf "\033[0;33m[WARN]\033[0m %s\n" "$1"; }
print_error() { printf "\033[0;31m[ERROR]\033[0m %s\n" "$1" >&2; }
command_exists() { command -v "$1" >/dev/null 2>&1; }
echo '╭────────────────────────────────────────────╮'
echo '│       Qompass AI Go Quickstart             │'
echo '╰────────────────────────────────────────────╯'
echo "   (c) 2025 Qompass AI. All rights reserved"
echo
NEEDED_TOOLS="git curl tar make clang bash"
MISSING=""
for tool in $NEEDED_TOOLS; do
    if ! command_exists "$tool"; then
        if [ -x "/usr/bin/$tool" ]; then
            ln -sf "/usr/bin/$tool" "$BIN_DIR/$tool"
            echo " → Added symlink for $tool in $BIN_DIR (not originally in PATH)"
        else
            MISSING="$MISSING $tool"
        fi
    fi
done
if [ -n "$MISSING" ]; then
    print_error "The following tools are missing: $MISSING"
    echo "Please install them with your package manager to continue."
    exit 1
fi
if ! command_exists gvm; then
    print_info "GVM not found. Installing GVM for per-user Go versioning..."
    curl -sSL https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer -o /tmp/gvm-installer.sh
    sh /tmp/gvm-installer.sh
    rm -f /tmp/gvm-installer.sh
fi
if [ -f "$HOME/.gvm/scripts/gvm" ]; then
    . "$HOME/.gvm/scripts/gvm"
else
    print_error "GVM install failed (or $HOME/.gvm/scripts/gvm missing)"
    exit 1
fi
if ! gvm list | grep -q "$GO_VERSION"; then
    print_info "Installing Go toolchain $GO_VERSION via gvm (this may take a few minutes)..."
    gvm install "$GO_VERSION" --prefer-binary || gvm install "$GO_VERSION"
fi
gvm use "$GO_VERSION" --default || {
    print_error "Failed to switch Go version using gvm (check your install)."
    exit 1
}
print_info "Active Go version: $(go version)"
TOOLS_COUNT=$(printf "%s\n" "$GO_TOOLS" | grep -c .)
print_info "Installing Go CLI tools ($TOOLS_COUNT)..."
echo "$GO_TOOLS" | while IFS= read -r tool; do
    [ -z "$tool" ] && continue
    print_info "Installing: $tool"
    if go install "$tool"; then
        print_info "Installed $tool ✅"
    else
        print_warn "Failed to install $tool ❌"
    fi
done
for extra in zig clang lld llvm; do
    if ! command_exists "$extra"; then
        print_warn "$extra not found - some advanced/cross features may be unavailable."
    fi
done
echo
print_info "✅ Go development environment for Qompass AI projects is READY!"
print_info "→ Please add the following to your shell rc if not already present:"
echo "   export PATH=\"$BIN_DIR:$GOBIN:\$PATH\""
print_info "Run \`gvm use $GO_VERSION\` in new shells or add to your rc/init if needed."
print_info "Ready, Set, Go!"
exit 0
