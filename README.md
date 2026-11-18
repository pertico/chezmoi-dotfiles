``` bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply <tu-usuario-o-url-del-repo>
```

``` powershell
iex "&{$(irm 'https://get.chezmoi.io/ps1')} -b '$env:USERPROFILE\.local\bin' init --apply <tu-usuario>"a
```
