#!/usr/bin/env python
import os
import subprocess

subprocess.call("cs4740_S21_pa2/execute_submission_and_assess_output.sh", shell=True)
print("<h2>Original Submission</h2>")
with open('subtract.py','r') as fs:
    print(fs.read())

