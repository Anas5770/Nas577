% Note: The first function listed is executed. main() is not a special function in Matlab/Octave.
% Problem Statement
%  -------------------------------------------------------
%Program to compute and display the number of trails and passes as well as the minimum, maximum and average marks/scores of the trail/pass list of a class in a course(say MATH 279)
% **********Test Data***********
%Number of Students: 10
%Examination Scores: 67,34,58,77,82,30,46,61,29,70

%function main()
nStds = input('Enter number of students: ');
passMark = 40;
nPass = 0;
nTrail = 0;
sumPass = 0;
sumTrail = 0;
initTrail = false;
initPass = false;
for k = 1 : nStds
    stdMark = input('Enter a student mark: ');
    if stdMark >= passMark
        nPass = nPass + 1;
        sumPass = sumPass + stdMark;
        if initPass == false
            minPass = stdMark;
            maxPass = stdMark;
            initPass = true;
        else
            if stdMark >= maxPass
                maxPass = stdMark;
            end
            if stdMark <= minPass
                minPass = stdMark;
            end
        end
    else
        nTrail = nTrail + 1;
        sumTrail = sumTrail + stdMark;
        if initTrail == true
            if stdMark >= maxTrail
                maxTrail = stdMark;
            end
            if stdMark <= minTrail
                minTrail = stdMark;
            end
        else
            minTrail = stdMark;
            maxTrail = stdMark;
            initTrail = true;
        end
    end
end
if nPass ~= 0 && nTrail ~= 0
    meanPass = sumPass / nPass;
    meanTrail = sumTrail / nTrail;
    disp(['Class Size: ', num2str(nStds), char(13), 'Number of Passes: ', num2str(nPass), char(13), 'Number of Trails: ', num2str(nTrail), char(13), 'MIn/Max Trails Score: ', num2str(minTrail), '/', num2str(maxTrail), char(13), 'MIn/Max Pass Score: ', num2str(minPass), '/', num2str(maxPass), char(13), 'Mean Pass Mark: ', num2str(meanPass), char(13), 'Mean Trail Mark: ', num2str(meanTrail)]);
else
    if nPass ~= 0
        meanPass = sumPass / nPass;
        disp(['Class Size: ', num2str(nStds), char(13), 'Number of Passes: ', num2str(nPass), char(13), 'Number of Trails: ', num2str(nTrail), char(13), 'MIn/Max Trails Score: ', 'Not Applicable.', char(13), 'MIn/Max Pass Score: ', num2str(minPass), '/', num2str(maxPass), char(13), 'Mean Pass Mark: ', num2str(meanPass), char(13), 'Mean Trail Mark: ', 'Not Applicable']);
    else
        meanTrail = sumTrail / nTrail;
        disp(['Class Size: ', num2str(nStds), char(13), 'Number of Passes: ', num2str(nPass), char(13), 'Number of Trails: ', num2str(nFail), char(13), 'MIn/Max Trails Score: ', num2str(minTrail), '/', num2str(maxTrail), char(13), 'MIn/Max Pass Score: ', 'Not Applicable', char(13), 'Mean Pass Mark: ', 'Not Applicable', char(13), 'Mean Trail Mark: ', num2str(meanTrail)]);
    end
end
%end


%GROUP 32 MEMBERS
%1. ANOKYE ERNEST - 8598821
%2. DOWOUNA NII NOI BENJAMIN - 8602721
%3. OFOSU YEBOAH PRINCE - 8607321
%4. ABUBAKAR ANAS - 8596221

