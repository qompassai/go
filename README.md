<!-- -----------/qompassai/go/README.md ------------------>
<!----------------Qompass AI on Go-Lang ------------------>
<!-- Copyright (C) 2025 Qompass AI, All rights reserved -->
<!-- -------------------------------------------------- -->

<h2> Go-lang: For microservices </h2>

<h3> Qompass AI on Go </h3>

![Repository Views](https://komarev.com/ghpvc/?username=qompassai-go)
![GitHub all releases](https://img.shields.io/github/downloads/qompassai/go/total?style=flat-square)

<p align="center">
  <a href="https://go.dev/">
  <img src="https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white" alt="Go">
</a>
<br>
<a href="https://go.dev/doc/">
  <img src="https://img.shields.io/badge/Go_Documentation-blue?style=flat-square" alt="Go Documentation">
</a>
<a href="https://github.com/topics/go-tutorial">
  <img src="https://img.shields.io/badge/Go_Tutorials-green?style=flat-square" alt="Go Tutorials">
</a>
<br>
    <a href="./LICENSE"><img src="https://img.shields.io/badge/License-Apache%202.0-blue.svg" alt="License: Apache 2.0"></a>
</p>

<details> 
  <summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #375eab; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
    <strong> <img src="https://go.dev/blog/go-brand/Go-Logo/PNG/Go-Logo_Blue.png" alt="Go Logo" style="height: 1.2em; vertical-align: -0.2em; margin-right: 0.25em;" /> Qompass AI Go Solutions </strong> 
  </summary> 
  <div style="background: #f8f9fa; padding: 15px; border-radius: 5px; margin-top: 10px; font-family: monospace;">

* [Qompass ADNS](https://github.com/qompassai/adns)
* [Qompass Azimuth](https://github.com/qompassai/azimuth)
* [Qompass Beacon](https://github.com/qompassai/beacon)
* [Qompass Go Template](https://github.com/qompassai/gtemplate)
* [Qompass Rose](https://github.com/qompassai/rose)
* [Qompass Sherpadoc](https://github.com/qompassai/sherpadoc)
* [Qompass Sherpats](https://github.com/qompassai/Sherpats)

    </div>
  </details>

<details>
  <summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #667eea; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
    <strong>▶️ Qompass AI Quick Start</strong>
  </summary>
  <div style="background: #f8f9fa; padding: 15px; border-radius: 5px; margin-top: 10px; font-family: monospace;">

```sh
curl -fSsL https://raw.githubusercontent.com/qompassai/go/main/scripts/quickstart.sh | sh
```
  </div>
  <blockquote style="font-size: 1.2em; line-height: 1.8; padding: 25px; background: #f8f9fa; border-left: 6px solid #667eea; border-radius: 8px; margin: 15px 0; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
    <details>
      <summary style="font-size: 1em; font-weight: bold; padding: 10px; background: #e9ecef; color: #333; border-radius: 5px; cursor: pointer; margin: 10px 0;">
        <strong>📄 We STRONGLY advise you read the script BEFORE running it 😉</strong>
      </summary>
      <pre style="background: #fff; padding: 15px; border-radius: 5px; border: 1px solid #ddd; overflow-x: auto;">
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
print_info()  { printf "\033[0;32m[INFO]\033[0m %s\n" "$1"; }
print_warn()  { printf "\033[0;33m[WARN]\033[0m %s\n" "$1"; }
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
</pre> </details> <p>Or, <a href="https://github.com/qompassai/go/blob/main/scripts/quickstart.sh" target="_blank">View the quickstart script</a>.</p>

  </blockquote>
</details>

</blockquote>
</details>

<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #667eea; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;"><strong>🧭 About Qompass AI</strong></summary>
<blockquote style="font-size: 1.2em; line-height: 1.8; padding: 25px; background: #f8f9fa; border-left: 6px solid #667eea; border-radius: 8px; margin: 15px 0; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">

<div align="center">
  <p>Matthew A. Porter<br>
  Former Intelligence Officer<br>
  Educator & Learner<br>
  DeepTech Founder & CEO</p>
</div>

<h3>Publications</h3>
  <p>
    <a href="https://orcid.org/0000-0002-0302-4812">
      <img src="https://img.shields.io/badge/ORCID-0000--0002--0302--4812-green?style=flat-square&logo=orcid" alt="ORCID">
    </a>
    <a href="https://www.researchgate.net/profile/Matt-Porter-7">
      <img src="https://img.shields.io/badge/ResearchGate-Open--Research-blue?style=flat-square&logo=researchgate" alt="ResearchGate">
    </a>
    <a href="https://zenodo.org/communities/qompassai">
      <img src="https://img.shields.io/badge/Zenodo-Publications-blue?style=flat-square&logo=zenodo" alt="Zenodo">
    </a>
  </p>

<h3>Developer Programs</h3>

[![NVIDIA Developer](https://img.shields.io/badge/NVIDIA-Developer_Program-76B900?style=for-the-badge\&logo=nvidia\&logoColor=white)](https://developer.nvidia.com/)
[![Meta Developer](https://img.shields.io/badge/Meta-Developer_Program-0668E1?style=for-the-badge\&logo=meta\&logoColor=white)](https://developers.facebook.com/)
[![HackerOne](https://img.shields.io/badge/-HackerOne-%23494649?style=for-the-badge\&logo=hackerone\&logoColor=white)](https://hackerone.com/phaedrusflow)
[![HuggingFace](https://img.shields.io/badge/HuggingFace-qompass-yellow?style=flat-square\&logo=huggingface)](https://huggingface.co/qompass)
[![Epic Games Developer](https://img.shields.io/badge/Epic_Games-Developer_Program-313131?style=for-the-badge\&logo=epic-games\&logoColor=white)](https://dev.epicgames.com/)

<h3>Professional Profiles</h3>
  <p>
    <a href="https://www.linkedin.com/in/matt-a-porter-103535224/">
      <img src="https://img.shields.io/badge/LinkedIn-Matt--Porter-blue?style=flat-square&logo=linkedin" alt="Personal LinkedIn">
    </a>
    <a href="https://www.linkedin.com/company/95058568/">
      <img src="https://img.shields.io/badge/LinkedIn-Qompass--AI-blue?style=flat-square&logo=linkedin" alt="Startup LinkedIn">
    </a>
  </p>

<h3>Social Media</h3>
  <p>
    <a href="https://twitter.com/PhaedrusFlow">
      <img src="https://img.shields.io/badge/Twitter-@PhaedrusFlow-blue?style=flat-square&logo=twitter" alt="X/Twitter">
    </a>
    <a href="https://www.instagram.com/phaedrusflow">
      <img src="https://img.shields.io/badge/Instagram-phaedrusflow-purple?style=flat-square&logo=instagram" alt="Instagram">
    </a>
    <a href="https://www.youtube.com/@qompassai">
      <img src="https://img.shields.io/badge/YouTube-QompassAI-red?style=flat-square&logo=youtube" alt="Qompass AI YouTube">
    </a>
  </p>

</blockquote>
</details>

<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #ff6b6b; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;"><strong>🔥 How Do I Support</strong></summary>
<blockquote style="font-size: 1.2em; line-height: 1.8; padding: 25px; background: #fff5f5; border-left: 6px solid #ff6b6b; border-radius: 8px; margin: 15px 0; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">

<div align="center">

<table>
<tr>
<th align="center">🏛️ Qompass AI Pre-Seed Funding 2023-2025</th>
<th align="center">🏆 Amount</th>
<th align="center">📅 Date</th>
</tr>
<tr>
<td><a href="https://github.com/qompassai/r4r" title="RJOS/Zimmer Biomet Research Grant Repository">RJOS/Zimmer Biomet Research Grant</a></td>
<td align="center">$30,000</td>
<td align="center">March 2024</td>
</tr>
<tr>
<td><a href="https://github.com/qompassai/PathFinders" title="GitHub Repository">Pathfinders Intern Program</a><br>
<small><a href="https://www.linkedin.com/posts/evergreenbio_bioscience-internships-workforcedevelopment-activity-7253166461416812544-uWUM/" target="_blank">View on LinkedIn</a></small></td>
<td align="center">$2,000</td>
<td align="center">October 2024</td>
</tr>
</table>

<br>
<h4>🤝 How To Support Our Mission</h4>

[![GitHub Sponsors](https://img.shields.io/badge/GitHub-Sponsor-EA4AAA?style=for-the-badge\&logo=github-sponsors\&logoColor=white)](https://github.com/sponsors/phaedrusflow)
[![Patreon](https://img.shields.io/badge/Patreon-Support-F96854?style=for-the-badge\&logo=patreon\&logoColor=white)](https://patreon.com/qompassai)
[![Liberapay](https://img.shields.io/badge/Liberapay-Donate-F6C915?style=for-the-badge\&logo=liberapay\&logoColor=black)](https://liberapay.com/qompassai)
[![Open Collective](https://img.shields.io/badge/Open%20Collective-Support-7FADF2?style=for-the-badge\&logo=opencollective\&logoColor=white)](https://opencollective.com/qompassai)
[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-Support-FFDD00?style=for-the-badge\&logo=buy-me-a-coffee\&logoColor=black)](https://www.buymeacoffee.com/phaedrusflow)

<details markdown="1">
<summary><strong>🔐 Cryptocurrency Donations</strong></summary>

**Monero (XMR):**

<div align="center">
  <img src="https://raw.githubusercontent.com/qompassai/svg/main/assets/monero-qr.svg" alt="Monero QR Code" width="180">
</div>

<div style="margin: 10px 0;">
    <code>42HGspSFJQ4MjM5ZusAiKZj9JZWhfNgVraKb1eGCsHoC6QJqpo2ERCBZDhhKfByVjECernQ6KeZwFcnq8hVwTTnD8v4PzyH</code>
  </div>

<button onclick="navigator.clipboard.writeText('42HGspSFJQ4MjM5ZusAiKZj9JZWhfNgVraKb1eGCsHoC6QJqpo2ERCBZDhhKfByVjECernQ6KeZwFcnq8hVwTTnD8v4PzyH')" style="padding: 6px 12px; background: #FF6600; color: white; border: none; border-radius: 4px; cursor: pointer;">
    📋 Copy Address
  </button>
<p><i>Funding helps us continue our research at the intersection of AI, healthcare, and education</i></p>

</blockquote>
</details>
</details>

<details id="FAQ">
  <summary><strong>Frequently Asked Questions</strong></summary>

### Q: How do you mitigate against bias?

**TLDR - we do math to make AI ethically useful**

### A: We delineate between mathematical bias (MB) - a fundamental parameter in neural network equations - and algorithmic/social bias (ASB). While MB is optimized during model training through backpropagation, ASB requires careful consideration of data sources, model architecture, and deployment strategies. We implement attention mechanisms for improved input processing and use legal open-source data and secure web-search APIs to help mitigate ASB.

[AAMC AI Guidelines | One way to align AI against ASB](https://www.aamc.org/about-us/mission-areas/medical-education/principles-ai-use)

### AI Math at a glance

## Forward Propagation Algorithm

$$
y = w_1x_1 + w_2x_2 + ... + w_nx_n + b
$$

Where:

- $y$ represents the model output
- $(x_1, x_2, ..., x_n)$ are input features
- $(w_1, w_2, ..., w_n)$ are feature weights
- $b$ is the bias term

### Neural Network Activation

For neural networks, the bias term is incorporated before activation:

$$
z = \sum_{i=1}^{n} w_ix_i + b
$$
$$
a = \sigma(z)
$$

Where:

- $z$ is the weighted sum plus bias
- $a$ is the activation output
- $\sigma$ is the activation function

### Attention Mechanism- aka what makes the Transformer (The "T" in ChatGPT) powerful

- [Attention High level overview video](https://www.youtube.com/watch?v=fjJOgb-E41w)

- [Attention Is All You Need Arxiv Paper](https://arxiv.org/abs/1706.03762)

The Attention mechanism equation is:

$$
Attention(Q, K, V) = softmax(\frac{QK^T}{\sqrt{d_k}})V
$$

Where:

- $Q$ represents the Query matrix
- $K$ represents the Key matrix
- $V$ represents the Value matrix
- $d_k$ is the dimension of the key vectors
- $\text{softmax}(\cdot)$ normalizes scores to sum to 1

### Q: Do I have to buy a Linux computer to use this? I don't have time for that!

### A: No. You can run Linux and/or the tools we share alongside your existing operating system:

- Windows users can use Windows Subsystem for Linux [WSL](https://learn.microsoft.com/en-us/windows/wsl/install)
- Mac users can use [Homebrew](https://brew.sh/)
- The code-base instructions were developed with both beginners and advanced users in mind.

### Q: Do you have to get a masters in AI?

### A: Not if you don't want to. To get competent enough to get past ChatGPT dependence at least, you just need a computer and a beginning's mindset. Huggingface is a good place to start.

- [Huggingface](https://docs.google.com/presentation/d/1IkzESdOwdmwvPxIELYJi8--K3EZ98_cL6c5ZcLKSyVg/edit#slide=id.p)

### Q: What makes a "small" AI model?

### A: AI models ~=10 billion(10B) parameters and below. For comparison, OpenAI's GPT4o contains approximately 200B parameters.

</details>

## License

This project is licensed under the [Apache License, Version 2.0](./LICENSE).

Copyright 2025 Qompass AI.
