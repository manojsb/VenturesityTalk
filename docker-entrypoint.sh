#!/bin/bash
python manage.py migrate                  # Apply database migrations
#python manage.py collectstatic --clear  --noinput # Clear static files
#python manage.py collectstatic --noinput  # Collect static files
#python manage.py loaddata panel/fixtures/initial.json
#python manage.py make_required_users
# Prepare log files and start outputting logs to stdout
touch /srv/logs/gunicorn.log
touch /srv/logs/access.log
tail -n 0 -f /srv/logs/*.log &

#echo Starting nginx 
# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn startup.wsgi:application \
    --name cv_django_merchandising \
    --bind 0.0.0.0:8000 \
    --workers 3 \
    --log-level=info \
    --log-file=/srv/logs/gunicorn.log \
    --access-logfile=/srv/logs/access.log 

#exec service nginx start 
#--bind unix:panel_api.sock \
