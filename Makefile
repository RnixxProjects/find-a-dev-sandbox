#!/usr/bin/make

SHELL = /bin/sh
include .env

.DEFAULT_GOAL := help

help: ## Show this help

	@echo "*************************************************"
	@echo "*************************************************"
	@echo "clone			(git) clone repositories via SSH"
	@echo "up			create a docker environment (Be sure that Docker is installed at your system)"
	@echo "down			remove a docker environment (Be sure that Docker is installed at your system)"
	@echo "start			start your containers"
	@echo "stop			stop your containers"
	@echo "ssh			log in to api container by www user"
	@echo "clear-fe			clear fe nitro"
	@echo "*************************************************"
	@echo "*************************************************"

clone:
	git clone ${GIT_URL}:RnixxProjects/find-a-dev-backend.git ./src/api
	git clone ${GIT_URL}:RnixxProjects/find-a-dev-bot.git ./src/bot
	git clone ${GIT_URL}:RnixxProjects/find-a-dev-frontend.git ./src/app

up:
	docker-compose up --build -d

down:
	docker-compose down -v --remove-orphans

start:
	docker-compose start

stop:
	docker-compose stop


