% Note: The first function listed is executed. main() is not a special function in Matlab/Octave.
%// Problem Statement
%// -------------------------------------------------------
%// A Program to input a student's continuous assessment and 
%// examination marks, valid the marks, allow maximum of three
%// wrong/invalid entries, compute and display the course code,
%// total examination mark, grade and status i.e. pass/trail 

%function main()
    maxNumAtmps = 3;
    courseCode = input('Enter Course Code: ');
    numAtmps = 1;
    while true
        markCA = input('Enter Continuous Assessment Mark: ');
        numAtmps = numAtmps + 1;
        if markCA >= 0 && markCA <= 30
            numAtmps = 1;
        end
        
        if ~(numAtmps <= maxNumAtmps && ~ (markCA >= 0 && markCA <= 30)) break; end  %Exit loop
    end
    while true
        
        markExam = input('Enter Examination Mark: ');
        numAtmps = numAtmps + 1;
        if markExam >= 0 && markExam <= 70
            markTotal = markCA + markExam;
        end
        
        if ~(numAtmps <= maxNumAtmps && ~ (markCA >= 0 && markExam <= 70)) break; end  %Exit loop
    end
    if markCA >= 0 && markCA <= 30
        if markExam >= 0 && markExam <= 70
            markTotal = markCA + markExam;
            if markTotal >= 70
                status = 'Pass';
                grade = 'A';
            else
                if markTotal >= 60
                    status = 'Pass';
                    grade = 'B';
                else
                    if markTotal >= 50
                        status = 'Pass';
                        grade = 'C';
                    else
                        if markTotal >= 40
                            status = 'Pass';
                            grade = 'D';
                        else
                            status = 'Trail';
                            grade = 'F';
                        end
                    end
                end
            end
        else
            disp(['An Invalid Exam Mark for ', num2str(courseCode), char(13), 'Number of Allowable Trials For Marks Exceeded ', num2str(courseCode), char(13), '0 <= markExam <= 70']);
        end
        disp(['Course Code: ', num2str(courseCode), char(13), 'Total Score: ', num2str(markTotal), char(13), 'Grade: ', grade, char(13), 'Status: ', status]);
    else
        disp(['An Invalid Cont. Assessment Mark for ', num2str(courseCode), char(13), 'Number of Allowable Trials For Marks Exceeded ', num2str(courseCode), char(13), '0 <= markCA <= 30']);
    end
%end


%GROUP 32 MEMBERS
%1. ANOKYE ERNEST - 8598821
%2. DOWOUNA NII NOI BENJAMIN - 8602721
%3. OFOSU YEBOAH PRINCE - 8607321
%4. ABUBAKAR ANAS - 8596221





