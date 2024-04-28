# HOW TO USE
1. `docker compose up` => can access `localhost:3080`
2. `docker run -it --network="host" -e NGROK_AUTHTOKEN=<ngrok token> ngrok/ngrok http 3080`
    - \<ngrok token\>: https://dashboard.ngrok.com/get-started/your-authtoken
3. can access to the global link shown in terminal.