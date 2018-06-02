all:

github:
	git pull
	git add .
	git commit
	git push origin master

database:
	rails db:drop
	rails db:migrate
	rails db:seed
