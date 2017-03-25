#! /bin/bash

export THIS=$0
function migrate_and_start {
    ./docker/wait-for-it.sh -t $TIMEOUT \
        $MY_APP_DB_HOST:$MY_APP_DB_PORT \
        -- $THIS __priv_migrate_and_start
}
function run_tox {
    ./docker/wait-for-it.sh -t $TIMEOUT \
        $MY_APP_DB_HOST:$MY_APP_DB_PORT \
        -- $THIS __priv_tox
}

function __priv_migrate_and_start {
    echo "other function"
    python manage.py migrate
    python manage.py runserver 0.0.0.0:8000
}
function __priv_tox {
    tox
}


export TIMEOUT=60

$@ # Run function in argument
