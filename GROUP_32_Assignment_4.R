
#Problem Statement
#-------------------------------------------------------
  #Program to compute and display the number of trails and passes as well as the minimum, maximum and average marks/scores of the trail/pass list of a class in a course(say MATH 279)
#Test Data*
 # Number of Students: 10
#Examination Scores: 67,34,58,77,82,30,46,61,29,70

nStds <- as.integer(readline(prompt = "Enter number of students: "))
passMark <- 40
nPass <- 0
nTrail <- 0
sumPass <- 0
sumTrail <- 0
initTrail <- FALSE
initPass <- FALSE

for (k in 1:nStds){
  stdMark <- as.integer(readline(prompt = "Exam score? "))
  
  if (stdMark >= passMark){
    nPass <- nPass + 1
    sumPass <- sumPass + stdMark
    if (initPass == FALSE){
      minPass <- stdMark
      maxPass <- stdMark
      initPass <- TRUE
    } else {
      if (stdMark >= maxPass){
        maxPass <- stdMark
      }
      if (stdMark <= minPass){
        minPass <- stdMark
      }
    }
    if (initTrail == TRUE){
      if (stdMark >= maxTrail){
        maxTrail <- stdMark
      }
      if (stdMark <= minTrail){
        minTrail <- stdMark
      }
    } else {
      minTrail <- stdMark
      maxTrail <- stdMark
      initTrail <- TRUE
    }
  }
}
if (nPass != 0 & nTrail != 0){
  meanPass <- sumPass / nPass
  meanTrail <- sumTrail / nTrail
  cat("Class Size: ", nStds, "\nNumber of Passes: ", nPass, "\nNumber of Trails: ", nTrail, "\nMin/Max Trails: ", minTrail, "/", maxTrail, "\nMin/Max Pass: ", minPass, "/", maxPass, "\nMean Pass Mark: ", meanPass, "\nMean Trail Mark: ", meanTrail)
  
} else {
  
  if (nPass != 0){
    meanPass <- sumPass / nPass
    cat("Class Size: ", nStds, "\nNumber of Passes: ", nPass, "\nNumber of Trails: ", nTrail, "\nMin/Max Trails: " ," Not Applicable.", "\nMin/Max Pass: ", minPass, "/", maxPass, "\nMean Pass Mark: ", meanPass, "\nMean Trail Mark: " ,"Not Applicable")
    
  }
  else {
    meanTrail <- sumTrail / nTrail
    cat("Class Size: ", nStds, "\nNumber of Passes: ", nPass, "\nNumber of Trails: ", nTrail, "\nMin/Max Trails: ", minTrail, "/", maxTrail, "\nMin/Max Pass: " ," Not Applicable.", "\nMean Pass Mark: Not Applicable", "\nMean Trail Mark: ", meanTrail)
    
  }
  
}


#%GROUP 32 MEMBERS
#%1. ANOKYE ERNEST - 8598821
#%2. DOWOUNA NII NOI BENJAMIN - 8602721
#%3. OFOSU YEBOAH PRINCE - 8607321
#%4. ABUBAKAR ANAS - 8596221

