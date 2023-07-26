#!/usr/bin/python3
"""
Returns information about tasks
owned by each employee in JSON format
"""


import csv
import json
import requests
import sys


def record_tasks_json(employee_id):
    """Displays tasks owned by employee"""
    url = "https://jsonplaceholder.typicode.com"
    employee_url = f"{url}/users/{employee_id}"
    todos_url = f"{url}/todos?userId={employee_id}"

    # Get employee details
    response = requests.get(employee_url)
    employee_data = response.json()
    empl_name = employee_data['name']

    # Get employee tasks
    response = requests.get(todos_url)
    todos_data = response.json()

    total = len(todos_data)
    done = [todo for todo in todos_data if todo['completed']]
    num_done = len(done)

    # Prepare JSON data, and  save to file
    data = {
            str(employee_id): [{"task": todo["title"], \
                    "completed": todo["completed"], \
                    "username": empl_name,
                }
            for todo in todos_data
            ]
            }
    filename = f"{employee_id}.json"
    with open(filename, "w") as json_file:
        json.dump(data, json_file, indent=4)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 script_name.py employee_id")
        sys.exit(1)

    employee_id = int(sys.argv[1])
    record_tasks_json(employee_id)
