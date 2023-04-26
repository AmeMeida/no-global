#!/bin/bash

regex='^.*config\s+--global\s+user\.(name|email)\s+\S+.*$'
command="$@";

if [[ $command =~ $regex ]]; then
    [[ ${BASH_REMATCH[1]} == 'email' ]] && tipo='email' || tipo='nome de usuário';

    echo 'pfvr para de usar --global ta todo mundo sofrendo';
    echo "Use o git config diretamente para definir o $tipo apenas nesse repositório:";
    echo '';
    echo "    $ git config user.${BASH_REMATCH[1]} <${BASH_REMATCH[1]}>";
    echo '';
    echo 'Já executei o comando pra você.';

    eval "git config user.${BASH_REMATCH[1]} '$4'"
else
    eval "git ${command}";
fi


