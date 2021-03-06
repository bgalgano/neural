#!/usr/bin/python

#Usage: a simple hello world in SLURM



# Imports
import numpy as np
import matplotlib as plt
import matplotlib.pyplot as plt

def standardHello():
    print('Hello World!')
    return None

def potterHello():
    print('I solemnly swear that I am up to no good.')
    return None

def figHello():
    x= np.arange(20)
    plt.plot(x, x)
    plt.savefig('hello_world.pdf')



def main():

    figHello()

if __name__ == "__main__":
  main()


