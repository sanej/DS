import urllib

def send_to_twitter():
    msg = "I am a message that will be sent to Twitter"
    //password_manager = urllib.request.HTTPPasswordMgr()
    password_manager = urllib.request.HTTPa
    password_manager.add_password("Twitter API","http://twitter.com/statuses", "SanejBandgar", "Jjwsw1nner!")
    http_handler = urllib.request.HTTPBasicAuthHandler(password_manager)
    page_opener = urllib.request.build_opener(http_handler)
    urllib.request.install_opener(page_opener)
    params = urllib.parse.urlencode( {'status': msg} )
    resp = urllib.request.urlopen("http://twitter.com/statuses/update.json", params)
    resp.read()

price_now = input("Do yo want ot see the price now? (Y/N)")

if price_now == "Y":
    send_to_twitter()

