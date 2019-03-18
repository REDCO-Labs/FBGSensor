import numpy as np
import matplotlib
matplotlib.use("TkAgg")
from matplotlib import pyplot as plt
import strainData.Tensiondistribuee
import os


class displaySimualtion:

    def __init__(self):
        self.sauce = 1

    def showSimulation(self):
        filename = '4.77kgOli.txt'
        dataDict = self.importSimulationData(filename)
        self.display(dataDict)

    def importSimulationData(self, filename):
        waveLenght,freq,db = np.loadtxt('{}'.format(filename),unpack=True,skiprows=9)
        dataDict = {'waveLenght':waveLenght,'db':db}
        return dataDict


    def display(self,dataDict):
        plt.plot(dataDict['waveLenght'], dataDict['db'])
        plt.show()


d = displaySimualtion()
for filename in os.listdir('strainData/Tensiondistribuee'):
    waveLenght,freq,db = np.loadtxt('{}'.format(filename),unpack=True,skiprows=9)
    plt.plot(waveLenght, db)
    plt.show()

# d.showSimulation()

