# Git

Pra eu nunca ficar esquecendo de como configura o fork:

- `origin`: meu  repo
- `upstream`: repo base (nvim-lua)

```config
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "upstream"]
	url = https://github.com/nvim-lua/kickstart.nvim.git
	fetch = +refs/heads/*:refs/remotes/upstream/*
[remote "origin"]
	url = git@github.com:rodolfolabiapari/kickstart.nvim.git
	fetch = +refs/heads/*:refs/remotes/origin/*
```
