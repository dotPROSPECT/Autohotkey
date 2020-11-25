;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
ls=ls --show-control-chars -F --color $*
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
cmderr=cd /d "%CMDER_ROOT%"

;= Custom
cpt=cd $b clip

;= Npm commands
dev=npm run dev
adev=npm run local

;= Git commands
gl=git log --oneline --all --graph --decorate  $*
go=git remote update $t git branch -vv
gp=git pull
gs=git status
ga=git add --all
gg=git commit
gc=git checkout -- .

;= User specific git commands
tgcl=git clone git@thorne:$*
tgit=git config user.email tomica.trncic@gmail.com $t git config user.name Thom Thorne
ngcl=git clone git@neo:$*
ngit=git config user.email ttrncic@autozubak.hr $t git config user.name tomica