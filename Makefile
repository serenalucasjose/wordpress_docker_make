init:
	@echo "--- GETTING A NEW WORDPRESS INSTALLATION FILES. ---"
	@git clone https://github.com/WordPress/WordPress.git;
	@echo "--- DONE. GETTING A BRAND NEW UNDERSCORES THEME. ---"
	@git clone https://github.com/Automattic/_s.git
	@mv _s/ WordPress/wp-content/themes/
	@echo "--- DONE. STARTING DOCKER ENVIRONMENT CONFIGURATION. PLEASE ENTER ROOT PASSWORD ---"
	@sudo docker-compose up -d
	@echo "--- DONE. PLEASE CONTINUE WITH WORDPRESS FIVE MINUTE INSTALLATION PROCESS ON BROWSER ---"
	@x-www-browser http://0.0.0.0:8001