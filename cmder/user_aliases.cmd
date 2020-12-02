;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here

;= CMDER DEF
history=cat "%CMDER_ROOT%\config\.history"
e.=explorer .
unalias=alias /d $1

;= GIT
gl=git log --oneline --all --graph --decorate  $*
go=git remote update $t git branch -vv
gp=git pull
gs=git status
ga=git add --all
gg=git commit
gc=git checkout -- .
gcc=git branch --contains $*
tgcl=git clone git@thorne:$*
tgit=git config user.email tomica.trncic@gmail.com $t git config user.name Thom Thorne
ngcl=git clone git@neo:$*
ngit=git config user.email ttrncic@autozubak.hr $t git config user.name tomica

;= NPM
dev=npm run dev
npmug=npm update -g
npmls=npm list -g --depth 0

;= NAVIGATION
ls=ls --show-control-chars -F --color $*
cmderr=cd /d "%CMDER_ROOT%"
cpt=cd $b clip
utilsdir=cd C:\Users\Thorne\Geekzone\Utilities
