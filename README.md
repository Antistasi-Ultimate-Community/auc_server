<div align="center">
  <h1>AUC Server Mod</h1>
  <h3>A companion mod for the AUC Client Mod that handles:</h3>

  server-side operations;

  client/server version validation;

  communication with the AUC bot (If supplied with the correct webhook).

  In order for webhook functionality to work, the easiest way requires you to create a python file called `__private__.py` next to `__init__.py`. In this file, assign a variable with the name `webhook_default_url` and value of your discord webhook, as a string.

  For advanced users creating their own python functions, it is possible to manually pass an argument named `webhook_url` into the `send_webhook` function.

  The [AUC bot](https://github.com/Antistasi-Ultimate-Community/auc_bot) has functions to retrieve these webhooks and parse them. You will likely have to re-create these functions to parse the webhook flag and content respectively.

  https://github.com/Antistasi-Ultimate-Community/auc_client | https://github.com/Antistasi-Ultimate-Community/auc_bot
  
  <p float="left">
    <img src="/Yellow.png" width="300" />
    <img src="/YellowAUC.png" width="300" /> 
  </p>
</div>
