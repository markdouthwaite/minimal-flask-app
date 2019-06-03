run:
	docker build -t dash-app .
	docker run -p 5000:5000 dash-app

clean:
	docker rm $$(docker ps --all -q -f status=exited)
