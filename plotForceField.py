import numpy as np
from mpl_toolkits.mplot3d import axes3d
from mpl_toolkits.mplot3d import Axes3D
import matplotlib
matplotlib.use("TkAgg")
from matplotlib import pyplot as plt
from matplotlib import cm


class displaySimualtion:

    def __init__(self):
        self.sauce = 1

    def showSimulation(self):
        filename = 'Pression-et-Force-XYZ.txt'
        dataDict = self.importSimulationData(filename)
        self.displayVectorField(dataDict)
    def importSimulationData(self, filename):
        x, y, z, absP, Fx, Fy, Fz = np.loadtxt('{}'.format(filename),unpack=True,skiprows=2,delimiter=',')
        dataDict = {'x':x,'y':y,'z':z,'Fx':Fx,'Fy':Fy,'Fz':Fz, 'absP':absP}
        return dataDict

    def displayVectorField(self,dataDict):
        fig = plt.figure()
        ax = fig.gca(projection='3d')
        ax.quiver(dataDict['x'], dataDict['y'], dataDict['z'], dataDict['Fx'], dataDict['Fy'], dataDict['Fz'], length=0.1, normalize=True)
        plt.show()

    def displayABSPressionField(self,dataDict):

        # x = np.linspace(-3, 3, 256)
        # y = np.linspace(-3, 3, 256)
        # X, Y = np.meshgrid(x, y)
        # Z = np.sinc(np.sqrt(X ** 2 + Y ** 2))

        fig = plt.figure()
        ax = fig.gca(projection = '3d')
        ax.plot_surface(X, Y, Z, cmap=cm.gray)
        plt.show()


d = displaySimualtion()
d.showSimulation()

