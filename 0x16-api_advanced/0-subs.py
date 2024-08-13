#!/usr/bin/python3
"""
Queries the Reddit API.
"""
import json
import requests
import sys


def number_of_subscribers(subreddit):
    """
    Return the number of total subscribers
    for a given subreddit.
    """
    # Reddit API endpoint to get subreddit information
    url = f"https://www.reddit.com/r/{subreddit}/about.json"

    # Set a custom User-Agent to avoid Too Many Requests error
    headers = {"User-Agent": "Custom User-Agent"}

    try:
        response = requests.get(url, headers=headers)
        response_data = response.json()

        # Check if the response contains data about the subreddit
        if "data" in response_data and "subscribers" in response_data["data"]:
            return response_data["data"]["subscribers"]
        else:
            return 0  # Return 0 for invalid subreddit or missing data

    except requests.exceptions.RequestException:
        return 0  # Return 0 for any request errors


if __name__ == "__main__":
    subreddit_name = sys.argv[2]
    subscribers = number_of_subscribers(subreddit_name)

    if subscribers == 0:
        print(f"Subreddit '{subreddit_name}' has no subscribers.")
    else:
        print(f"Subreddit '{subreddit_name}' has {subscribers} subscribers.")
