from discord_webhook import DiscordWebhook

from .__private__ import webhook_default_url

def send_webhook(webhook_url=None, retry_rate_limit=True, webhook_content=None, webhook_flag=None):

    if (webhook_url == None):
        webhook_url = webhook_default_url

    if (webhook_content == None or webhook_content == ""):
        raise Exception(f"You can't send a webhook without anything to say... Content: {webhook_content}")

    webhook_content = f"+[{webhook_flag}]\n\n+{webhook_content}"

    webhook = DiscordWebhook(url=webhook_url, rate_limit_retry=True, content=webhook_content)
    response = webhook.execute()

if (__name__ == "__main__"):
    send_webhook(webhook_content="Generic Message", webhook_flag="GENERIC")