#!/usr/bin/env python3

import sys
import time
import subprocess

def load_configuration_file(filepath):
    config = dict()
    exec(open(filepath).read(), config)
    return config


def run_command(command):
    p = subprocess.Popen(command, shell=True,
                         stdout=subprocess.PIPE,
                         stderr=subprocess.STDOUT)
    return iter(p.stdout.readline, b'')



def main():
    config = load_configuration_file("yocto-fetch.conf.py")
    for cmd in config['cmds']:
        print("exec: \"{}\'".format(cmd))
        for line in run_command(cmd):
           print(line)


if __name__ == "__main__":
    main()

