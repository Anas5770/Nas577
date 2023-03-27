# -*- coding: utf-8 -*-
"""
Created on Thu Mar 23 11:41:41 2023

@author: Abubakar Anas
"""
'''
// Problem Statement
// -------------------------------------------------------
// A Program to input a student's continuous assessment and 
// examination marks, valid the marks, allow maximum of three
// wrong/invalid entries, compute and display the course code,
// total examination mark, grade and status i.e. pass/trail 
'''


maxNumAtmps = 3
print("Enter Course Code")
courseCode = input()
numAtmps = 1
while True:    #This simulates a Do Loop
    print("Enter Continuous Assessment Mark: ")
    markCA = float(input())
    numAtmps = numAtmps + 1
    if markCA >= 0 and markCA <= 30:
        numAtmps = 1
    if not(numAtmps <= maxNumAtmps and not (markCA >= 0 and markCA <= 30)): break   #Exit loop
while True:    #This simulates a Do Loop
    print("Enter Examination Mark: ")
    markExam = float(input())
    numAtmps = numAtmps + 1
    if markExam >= 0 and markExam <= 70:
        markTotal = markCA + markExam
    if not(numAtmps <= maxNumAtmps and not (markCA >= 0 and markExam <= 70)): break   #Exit loop
if markCA >= 0 and markCA <= 30:
    if markExam >= 0 and markExam <= 70:
        markTotal = markCA + markExam
        if markTotal >= 70:
            status = "Pass"
            grade = "A"
        else:
            if markTotal >= 60:
                status = "Pass"
                grade = "B"
            else:
                if markTotal >= 50:
                    status = "Pass"
                    grade = "C"
                else:
                    if markTotal >= 40:
                        status = "Pass"
                        grade = "D"
                    else:
                        status = "Trail"
                        grade = "F"
    else:
        print("\nAn Invalid Exam Mark for " + courseCode + chr(13) + \
              "\nNumber of Allowable Trials For Marks Exceeded " + courseCode + chr(13) + \
              "\n0 <= markExam <= 70")
    print("\nCourse Code: " + courseCode + chr(13) + \
          "\nTotal Score: " + str(markTotal) + chr(13) + \
          "\nGrade: " + grade + chr(13) + \
          "\nStatus: " + status)
else:
    print("\nAn Invalid Cont. Assessment Mark for " + courseCode + chr(13) + \
          "\nNumber of Allowable Trials For Marks Exceeded " + courseCode + chr(13) + \
          "\n0 <= markCA <= 30")




'''

GROUP 32 MEMBERS
1. ANOKYE ERNEST - 8598821
2. DOWOUNA NII NOI BENJAMIN - 8602721
3. OFOSU YEBOAH PRINCE - 8607321
4. ABUBAKAR ANAS - 8596221

'''
