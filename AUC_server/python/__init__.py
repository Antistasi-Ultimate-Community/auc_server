from .webhooks import send_webhook

from threading import Thread

def thread_function(target, args, start_thread=False):
    thread = Thread(target=target, args=args)

    if (start_thread):
        thread_start(thread=thread)

    return thread

def thread_start(thread):
    thread.start()

def handle_user_return_thread(users=None):
    thread_function(target=handle_user_return, users=users, start_thread=True)

def handle_user_return(users=None):
    if (users == None or users == []):
        return False

    print(users)

    users_dict = {}

    for user in users:

        user_uid = user[0]
        user_name = user[1][0]
        user_name_steam = user[1][1]
        user_is_admin = user[2]

        users_dict[user_uid] = {"name": user_name, "name_steam": user_name_steam, "is_admin": user_is_admin}

    send_webhook(webhook_content=users_dict, webhook_flag="STEAMID")