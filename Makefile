up: start-ngrok
	docker compose up

start-ngrok:
	osascript -e 'tell application "Terminal" to do script "cd /Users/fujisawakoki/projects/LibreChat && ./scripts/start-ngrok.sh"'
