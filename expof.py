# -*- coding: utf-8 -*-
"""
Created on Thu Mar 23 11:41:41 2023

@author: Lenovo
"""
from math import sqrt,pi
# Note: The first function listed is executed. main() is not a special function in Matlab/Octave.
# Purpose: A program
# Group XXX
# Akua Afriyie
#function expofx()
#disp('Enter x');
x = float(input("Enter a value for x: "));
#disp('Enter N');
n = int(input("Enter a value for n: "));
lasTerm = 1;
expx = lasTerm;
for k in range(1,n + 1):
    upTerm = lasTerm * (x / 2 / k);
    expx = expx + upTerm;
    lasTerm = upTerm;
#end
p = (1 / sqrt(2 * pi)) * expx;
print('P = ', p)
#end
