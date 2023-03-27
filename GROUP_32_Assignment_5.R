#// Problem Statement
#// -------------------------------------------------------
#// A Program to input a student's continuous assessment and 
#// examination marks, valid the marks, allow maximum of three
#// wrong/invalid entries, compute and display the course code,
#// total examination mark, grade and status i.e. pass/trail

maxNumAtmps <- 3
cat("Enter Course Code: ")
courseCode <- readline()

numAtmps <- 1
repeat{
  cat("Enter Continuous Assessment Mark: ")
  markCA <- as.numeric(readline())
  numAtmps <- numAtmps + 1
  if(numAtmps > maxNumAtmps | (markCA >= 0 & markCA <= 30)){
    break
  }
}

if(markCA >= 0 & markCA <= 30){
  numAtmps <- 1
  repeat{
    cat("Enter Examination Mark: ")
    markExam <- as.numeric(readline())
    numAtmps <- numAtmps + 1
    if(numAtmps > maxNumAtmps | (markExam >= 0 & markExam <= 70)){
      break
    }
  }
  
  if(markExam >= 0 & markExam <= 70){
    markTotal <- markCA + markExam
    if(markTotal >= 70){
      status <- "Pass"
      grade <- "A"
    } else if(markTotal >= 60){
      status <- "Pass"
      grade <- "B"
    } else if(markTotal >= 50){
      status <- "Pass"
      grade <- "C"
    } else if(markTotal >= 40){
      status <- "Pass"
      grade <- "D"
    } else {
      status <- "Trail"
      grade <- "F"
    }
    cat("===================\n")
    cat("Course: ", courseCode, "\n")
    cat("Total Score: ", markTotal, "%\n")
    cat("Grade: ", grade, "\n")
    cat("Status: ", status, "\n")
    cat("===================\n")
  } else {
    cat(paste("An Invalid Exam Mark for ", courseCode, "\n"))
    cat(paste("Number of Allowable Trials For Marks Exceeded ", courseCode, "\n"))
    cat(paste("0 <= markExam <= 70", "\n"))
  }
} else {
  cat(paste("An Invalid Cont. Assessment Mark for ", courseCode, "\n"))
  cat(paste("Number of Allowable Trials For Marks Exceeded ", courseCode, "\n"))
  cat(paste("0 <= markCA <= 30", "\n"))
}


#%GROUP 32 MEMBERS
#%1. ANOKYE ERNEST - 8598821
#%2. DOWOUNA NII NOI BENJAMIN - 8602721
#%3. OFOSU YEBOAH PRINCE - 8607321
#%4. ABUBAKAR ANAS - 8596221
