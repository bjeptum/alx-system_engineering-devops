#!/usr/bin/python3
"""
Recursive funtion module
"""
import json
import requests
import sys


def recurse(subreddit, hot_list=None, after=None):
    """
    Queries Reddit API and returns
    a list containing all hot articles from Reddit
    """
    if hot_list is None:
        hot_list = []

    url = f"https://www.reddit.com/r/{subreddit}/hot.json"

    # Set a custom User-Agent to avoid Too Many Requests error
    headers = {"User-Agent": "Custom User-Agent"}
    query_params = {"after": after} if after else {}

    response = requests.get(url, headers=headers,
                            params=query_params, allow_redirects=False)

    if response.status_code == 200:
        data = response.json()
        subs = data.get('data', {}).get('children', [])

        if not subs:
            return hot_list if hot_list else None

        for sub in subs:
            title = sub['data'].get('title')
            if title:
                hot_list.append(title)

        # Get the next page of results
        after = data.get('data', {}).get('after')
        if after:
            return recurse(subreddit, hot_list, after)

        return hot_list if hot_list else None
    # Check if an invalid subreddit
    elif response.status_code == 302:
        return None
    else:
        response.raise_for_status()

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <subreddit>")
        sys.exit(1)

    subreddit = sys.argv[1]
    hot_articles = recurse(subreddit)
    if hot_articles is not None:
        print(json.dumps(hot_articles, indent=2))
    else:
        print("No hot articles found or invalid subreddit.")
