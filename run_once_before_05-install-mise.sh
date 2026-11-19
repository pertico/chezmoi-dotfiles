#!/usr/bin/env bash
# set -euo pipefail

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo "${GREEN}[+] Verificando e instalando mise..."
if ! command -v mise &> /dev/null; then
    echo -e "${GREEN}[+] Instalando 'mise'...${NC}"
    curl -fsSL https://mise.run | sh
    eval "$(~/.local/bin/mise activate bash)"
fi
echo -e "${GREEN}[✔] mise bootstrap completado con éxito.${NC}"