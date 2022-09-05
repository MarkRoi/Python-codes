import tweepy
import pandas as pd

# keys got from the twitter developer portal after gainig API access
consumer_key = 'RwWrndLuMhWXLvjsLkP5SECm7'
consumer_secret = 'dSRokwK5B7E4TVgHiM2TjYg4id62kbO1eReToK5CA46RqnjOX0'
access_token = '4763117133-4Klzr7HvZFTT735M4Xh3atrE9oOdRnPgUYghHf5'
access_token_secret = 'q2Yhy4kdC6nkNYzYnzSAytCgMaED66AueJWlZNJx3YeIL'


# making an authentication for the program 
auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

# establishing a connection using the API
api = tweepy.API(auth)

# twitter handle from which the tweets will be retreived 
username = 'just_roi'

# user timeline is used to extract tweets of someone else
tweets = api.user_timeline(screen_name = username,
                            #200 is the maximum allowed count
                            count = 200,
                            include_rts = True,
                            #Necessary to keep full text
                            #otherwise only the first 140 words are extracted
                            tweet_mode = 'extended'
)

json_data = [r._json for r in tweets]

df = pd.json_normalize(json_data)

df.head()

df['full_text'].to_csv("tweets.csv",index = False)

import stylecloud

stylecloud.gen_stylecloud(file_path='tweets.csv',
                            icon_name='fab fa-twitter',
                            palette= 'colorbrewer.qualitative.Paired_3',
                            background_color= 'white',
                            gradient='horizontal',
                            stopwords = True,
                            custom_stopwords = ['RT', 'THE','IS','WITH','ON','THIS','HTTPS','CO','TO','AND','OF','IT']
) 

from IPython.display import Image
Image('stylecloud.png')
