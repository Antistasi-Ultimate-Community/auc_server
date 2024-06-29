from .webhooks import send_webhook

def handle_uid_return(uids=None):
    if (uids == None or uids == []):
        return False

    print(uids)

    send_webhook(webhook_content=uids, webhook_flag="STEAMID")