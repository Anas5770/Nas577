print("Enter the number of students")
nStds = int(input())
passMark = 40
nPass = 0
nTrail = 0
minTrail = 0
maxTrail = 0
minPass = 0
maxPass = 0
sumTrail = 0
sumPass = 0
initTrail = False
initPass = False
for k in range(1, nStds + 1, 1):
    print("Enter your Score")
    stdMark = float(input())
    if stdMark >= passMark:
        nPass = nPass + 1
        sumPass = sumPass + stdMark
        if initPass == False:
            minPass = stdMark
            maxPass = stdMark
            initPass = True
        else:
            if stdMark >= maxPass:
                maxPass = stdMark
                if stdMark <= minPass:
                    minPass = stdMark
    else:
        nTrail = nTrail + 1
        sumTrail = sumTrail + stdMark
        if initTrail == True:
            if stdMark >= maxTrail:
                maxTrail = stdMark
                if stdMark <= minTrail:
                    minTrail = stdMark
        else:
            minTrail = stdMark
            maxTrail = stdMark
            initTrail = True
if nPass != 0 and nTrail != 0:
    meanPass = sumPass / nPass
    meanTrail = sumTrail / nTrail
    print("Class Size: " + str(nStds) + chr(13) + "Number of Passes: " + str(nPass) + chr(13) + "Number of Trails: " + str(nTrail) + chr(13) + "Min Tail: " + str(minTrail) + chr(13) + "Max Trail: " + str(maxTrail) + chr(13) + "Min Pass: " + str(minPass) + chr(13) + "Max Pass: " + str(maxPass) + chr(13) + "Mean Pass Mark: " + str(meanPass) + chr(13) + "Mean Trail Mark: " + str(meanTrail))
else:
    if nPass != 0:
        meanPass = sumPass / nPass
        print("Class Size: " + str(nStds) + chr(13) + "Number of Passes: " + str(nPass) + chr(13) + "Number of Trails: " + str(nTrail) + chr(13) + "Min Tail: " + str(minTrail) + chr(13) + "Max Trail: " + "Not Applicable " + chr(13) + "Min Pass: " + "Not Applicable" + chr(13) + "Max Pass: " + str(maxPass) + chr(13) + "Mean Pass Mark: " + str(meanPass) + chr(13) + "Mean Trail Mark: " + "Not Applicable")
    else:
        meanTrail = sumTrail / nTrail
        print("Class Size: " + str(nStds) + chr(13) + "Number of Passes: " + str(nPass) + chr(13) + "Number of Trails: " + str(nTrail) + chr(13) + "Min Tail: " + str(minTrail) + chr(13) + "Max Trail: " + str(maxTrail) + chr(13) + "Min Pass: " + "Not Applicable" + chr(13) + "Max Pass: " + "Not Applicable" + chr(13) + "Mean Pass Mark: " + "Not Applicable" + chr(13) + "Mean Trail Mark: " + str(meanTrail))
