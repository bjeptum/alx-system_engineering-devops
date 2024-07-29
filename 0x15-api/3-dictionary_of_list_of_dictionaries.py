#!/usr/bin/python3
"""
Returns information of a given
employee's TODO list progress
Exports data in JSON format
"""


import requests
import sys
import json


def fetch_data(url):
    """Get employee data"""
    response = requests.get(employee_url)
    employee_data = response.json()
    empl_name = employee_data['name']


def main():
    """Access employee data"""
    url = "https://jsonplaceholder.typicode.com"
    employee_url = f"{url}/users}"
    todos_url = f"{url}/todos}"

    # Get employee details
    empls_data = fetch_data(employee_url)
    all_tasks = {}

    for empl in empls_data:
        employeee_id = empl['id']
        username = empl['username']
        empl_tasks_url = f"{todos_url}?userId={user_id}"

    # Fetch tasks for the user
    tasks_data = fetch_data(empl_tasks_url)
    empl_tasks = [
            {
                "username": username,
                "task": task['title'],
                "completed": task['completed']
            }
            for task in tasks_data
        ]

    all_tasks[employee_id] = user_tasks

    # Write the data to a JSON file
    with open('todo_all_employees.json', 'w') as json_file:
        json.dump(all_tasks, json_file, indent=4)


if __name__ == "__main__":
    main()
