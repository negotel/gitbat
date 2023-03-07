@echo OFF
title GIT UNIFICADO
cls
echo.
echo UNIFICANDO COMANDOS GIT:
echo.

IF EXIST ".git" (
    set /p tipo=Digite sua mensagem de commit aqui: 
    echo %tipo%
) ELSE (
    
    echo inicializando o comando [git init]
    echo.

    set /p projetoRemoto=Informe a url do projeto remoto: 
    set /p mCommit=Digite sua mensagem de commit aqui: 
    echo "#gitbat" >> README.md
    echo.
    git init
    git add .
    git commit -m "%mCommit%"
    git branch -M main
    git remote add origin "%projetoRemoto%"
    git push -u origin main
)




