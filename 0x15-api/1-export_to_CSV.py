#!/usr/bin/python3
"""
Records all tasks
owned by each employee
"""


import csv
import json
import requests
import sys


def record_tasks(employee_id):
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

    # Prepare CSV data
    csv_data = []
    for task in todos_data:
        task_completed_status = 'True' if task['completed'] \
                                else 'False'
        csv_data.append([str(employee_id), empl_name,
                        task_completed_status, task['title']])

    # Export to CSV file
    file_name = f"{employee_id}.csv"
    with open(file_name, 'w', newline='', encoding='utf-8') as file:
        writer = csv.writer(file)
        writer.writerows(csv_data)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 script_name.py employee_id")
        sys.exit(1)

    employee_id = int(sys.argv[1])
    record_tasks(employee_id)
