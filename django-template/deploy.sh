# build our heroku-ready local Docker image
docker build -t django-react-template -f Dockerfile .


# push your directory container for the web process to heroku
heroku container:push web -a django-react-template


# promote the web process with your container 
heroku container:release web -a django-react-template


# run migrations
heroku run python3 manage.py migrate -a django-react-template