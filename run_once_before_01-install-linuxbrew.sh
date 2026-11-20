#!/usr/bin/env bash
# set -euo pipefail

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo "${GREEN}[+] Verificando e instalando Linuxbrew..."
if [ ! -d "$HOME/.linuxbrew" ]; then
    # Instalación no interactiva de Linuxbrew en modo usuario
    echo -e "${GREEN}[+] Instalando 'linuxbrew'...${NC}"
    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | NONINTERACTIVE=1 bash -s -- --path ~/.linuxbrew
    eval "$($HOME/.linuxbrew/bin/brew shellenv)"
fi

brew install chezmoi
echo -e "${GREEN}[✔] linuxbrew bootstrap completado con éxito.${NC}"
