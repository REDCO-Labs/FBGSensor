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
strainList = []
distri = 1553.54729
extr = 1553.64244
oli = 1587.94054
massList = [1.4,1.97,2.8,3.37,4.2,4.77]
for filename in os.listdir('strainData/oli'):
    a =2
    waveLenght,freq,db = np.loadtxt('strainData/oli/{}'.format(filename),unpack=True,skiprows=9)
    # plt.plot(waveLenght, db)
    strainList.append(waveLenght[int(np.mean(np.where(db > -5)))] -oli )

print(strainList)
# d.showSimulation()
p = np.polyfit(massList,strainList,1)
a = np.linspace(0,5,200)
b = [p[0] * i + p[1] for i in a]
plt.plot(massList,strainList,label='data')
plt.plot(a, b, label='fit : {}w + {}'.format(np.round(p[0], 5),np.round(p[1],5)))
plt.xlabel('Masse appliquées [kg]')
plt.ylabel('$\Delta \lambda$ [nm]')
plt.legend()
plt.show()
