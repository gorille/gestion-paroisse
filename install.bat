if exist %userprofile%\desktop\gestion-paroisse goto update
cd  %userprofile%\desktop
call git clone https://github.com/gorille/gestion-paroisse.git
cd %userprofile%\desktop\gestion-paroisse

call rake db:create


:update
cd %userprofile%\desktop\gestion-paroisse
call git pull
call rake db:migrate
call bundle install