# VenturesityTalk

`mkdir ~/www/`

`mkdir ~/www/venturesity/`

`sudo yum install git`

`ssh-keygen -t rsa -b 4096`

`cat ~/.ssh/id_rsa.pub `

`git clone git@github.com:nimeshkverma/VenturesityTalk.git`

`cd VenturesityTalk/`

`cd code/`

`virtualenv venv`

`source venv/bin/activate`

`pip install -r requirements.txt `

`cd startup/`

`python manage.py runserver 0.0.0.0:8000`

`sudo vim /etc/init/venturesity.conf`

`sudo initctl start venturesity`

`sudo initctl status venturesity`

`sudo initctl restart venturesity`
