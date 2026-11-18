#!/usr/bin/env bash
set -euo pipefail

echo "==> Verificando e instalando Linuxbrew..."
if [ ! -d "$HOME/.linuxbrew" ]; then
    # Instalación no interactiva de Linuxbrew en modo usuario
    NONINTERACTIVE=1 curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash -s -- --path ~/.linuxbrew
fi

# Cargar Linuxbrew en el PATH para la ejecución de este script
if [ -d "$HOME/.linuxbrew" ]; then
    eval "$($HOME/.linuxbrew/bin/brew shellenv)"
elif [ -d "/home/linuxbrew/.linuxbrew" ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

brew install chezmoi

echo "¡Entorno base de Linux inicializado con éxito!"
