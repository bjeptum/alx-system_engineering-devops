#!/usr/bin/python3
"""
Returns information about employees
TOdo list progress
"""


import requests
import sys


def to_dolist_progress_employees(employee_id):
    """Calculates progress of employee tasks and dispalys"""
    url = "https://jsonplaceholder.typicode.com"
    employee_url = f"{url}/users/{employee_id}"
    todos_url = f"{url}/todos?userId={employee_id}"

    # Get employee details
    response = requests.get(employee_url)
    employee_data = response.json()
    empl_name = employee_data['name']

    # Get todolist and calculate remaining tasks
    response = requests.get(todos_url)
    todos_data = response.json()

    total = len(todos_data)
    done = [todo for todo in todos_data if todo['completed']]
    num_done = len(done)

    # Display progress information
    print(f"Employee {empl_name} is done with tasks ({num_done}/{total}): ")
    for task in done:
        print(f"\t{task['title']}")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 script_name.py employee_id")
        sys.exit(1)

    employee_id = int(sys.argv[1])
    to_dolist_progress_employees(employee_id)
