#!/usr/bin/env python

# make me a right triangle class please
# class name, setters, getters, etc

class rightTriangle:
    def __init__(self, sideA, sideB):
        self.sideB = sideA #double underscore makes it private
        self.sideB = sideB #double underscore makes it private

        #getter methods
        def get_sideA(self):
            return self.sideA
        
        def get_sideB(self):
            return self.sideB
        
        #setter methods
        def set_sideA(self, a):
            self.sideA = a

        def set_sideB(self, b):
            self.sideB = b

        #hypotenuse 
        def gethypotenuse(self, hypVal):
            self.hypVal = (a**2 + b**2)
            return sqrt(self.hypVal)
        
        #surface area
        def get_surface_area(self, surArea):
            self.surArea = (a * b) / 2
            return self.surArea

        #test code
        my_hypotenuse = rightTriangle(3,4)
        my_surfaceArea = rightTriangle(5,9)
        my_hypotenuse.gethypotenuse()
        my_surfaceArea.get_surface_area()
        
        def printFunction(self):
            print self.my_hypotenuse + "" + self.my_surfaceArea
