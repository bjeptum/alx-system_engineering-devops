#!/usr/bin/python3
"""
Queries the Reddit API to get hot posts
"""
import json
import requests
import sys


def top_ten(subreddit):
    """
    Prints the tittles of first ten hot posts
    listed for a given subreddit
    """
    # Reddit API endpoint to get subreddit information
    url = f"https://www/reddit.com/r/{subreddit}/hot.json"

    # Set a custom User-Agent to avoid Too Many Requests error
    headers = {"User-Agent": "Custom User-Agent"}

    response = requests.get(url, headers=headers,
                            params={'limit': '10'}, allow_redirects=False)

    if response.status_code == 200:
        posts = response.json()

        # Check if the response contains the posts about the subreddit
        if "data" in pots and "children" in posts["data"]:
            for post in posts["data"]["children"]:
                print(post["data"]["title"])
        else:
            print("None")

    else:
        print("None")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <subreddit>")
        sys.exit(1)

    subreddit = sys.argv[1]
    top_ten(subreddit)
