#!/usr/bin/env bash
# exit on error
set -o errexit
cd ./backend
pip3 install -r requirements.txt
 
python3 manage.py collectstatic --noinput
python3 manage.py migrate
python3 manage.py createsuperuser --username admin --email admin@test.com --noinput