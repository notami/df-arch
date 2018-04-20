import requests
import json

feed_url = 'https://www.youtube.com/feeds/videos.xml?channel_id=iUCVeW9eItRCmKuME-sNDnMtQ'
channel_id = input('Your channel id: UCVeW9eItRCmKuME-sNDnMtQ')
api_key = 'AIzaSyD_Gtvrglw0MZKtgvWemJvke2yhDFJNNLk'

request_url = 'https://www.googleapis.com/youtube/v3/subscriptions?' + \
        'part=snippet%2CcontentDetails&channelId=' + channel_id + \
        '&maxResults=50&key=' + api_key

f = open('my_urls', 'w+')
i = 0
r = requests.get(request_url)
channel_list = json.loads(r.text)

for channel in channel_list['items']:
    
    channel_id = channel['snippet']['channelId']
    channel_title = channel['snippet']['title']
    channel_feed_url = feed_url + channel_id

    print('Generating for ' + channel_title)
    f.write(channel_feed_url + ' "Youtube" ' + '"!' + channel_title + '"\n')
    i += 1

f.write('\n"query:Youtube:tags # \\"Youtube\\""')
print('\nDone! A total of ' + str(i) + ' channels written in my_urls file')

