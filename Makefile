.PHONY: install run-server run-solo-game run-solo-game-browser help

help: 
	@echo "install - install requirements"
	@echo "run-server - run server"
	@echo "run-solo-game - run solo game in the console"
	@echo "run-solo-game-browser - run solo game in the browser"

install:
	pip install -r requirements.txt

run-server:
	python main.py

run-solo-game:
	battlesnake play -W 11 -H 11 --name 'Python Starter Project' --url http://localhost:8000 -g solo -v

run-solo-game-browser:
	battlesnake play -W 11 -H 11 --name 'Python Starter Project' --url http://localhost:8000 -g solo --browser

run-perf-test:
	./test_perf.sh