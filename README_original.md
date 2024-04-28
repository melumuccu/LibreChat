# HOW TO USE

1. `pnpm install`
1. Add the following environment variables to .env

   - NGROK_ALLOW_EMAILS: list of email addresses allowed for Google authentication Separated by ", " (comma + space)
   - NGROK_AUTHTOKEN: ngrok authtoken
     - see: https://dashboard.ngrok.com/get-started/your-authtoken
   - NGROK_DOMAIN_LIBRECHAT: ngrok domain for LibreChat
     - see: https://dashboard.ngrok.com/cloud-edge/domains

1. `docker compose up` => can access `localhost:3080`
1. `pnpm run ngrok` => can access to the global link shown in terminal.
