;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here

;= COMMANDS
history=cat "%CMDER_ROOT%\config\.history"
e.=explorer .
e=explorer $*
unalias=alias /d $1
setwinenv=setx $*

;= GIT
gl=git log --oneline --all --graph --decorate  $*
go=git remote update $t git branch -vv
gp=git pull
gs=git status
ga=git add --all
gg=git commit
gc=git checkout -- .
gcc=git branch --contains $*
gcd=git checkout development
gcq=git checkout qa
gcp=git cherry-pick $*
tgcl=git clone git@thorne:$*
tgit=git config user.email tomica.trncic@gmail.com $t git config user.name Thom Thorne
nsgcl=git clone git@ns:$*
nsgit=git config user.email tomica@neostar.com $t git config user.name tomica
azgcl=git clone git@az:$*
azgit=git config user.email ttrncic@autozubak.hr $t git config user.name tomica


;= NPM
dev=npm run dev
npmug=npm update -g
npmls=npm list -g --depth 0

;= NAVIGATION
ls=ls --show-control-chars -F --color $*
cpt=cd $b clip

