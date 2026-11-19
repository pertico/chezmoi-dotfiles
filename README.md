# Linux bootstrap command
``` bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b /tmp init --apply pertico/chezmoi-dotfiles
```
# Windows bootstrap command
``` powershell
iex "&{$(irm 'https://get.chezmoi.io/ps1')} -b '$Env:TEMP' init --apply  pertico/chezmoi-dotfiles"
```
