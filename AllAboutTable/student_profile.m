
function studentTable = student_profile()
 %returing function

% function student_profile() % for no returing function
    % Initialize arrays if you want like name =[]
    name = cell(2,1);
    id   = cell(2,1);
    dept = cell(2,1);
    year = cell(2,1);
    cgpa = zeros(2,1);  % Numeric CGPA for proper sorting and formatting

    %  Collect student data
    for i = 1:2
        fprintf('\n Student %d Info:\n', i);
         fprintf(' ------------------\n');
        name{i} = input(' Enter Name         : ', 's');
        id{i}   = input('Enter Student ID   : ', 's');
        dept{i} = input(' Enter Department   : ', 's');
        year{i} = input('Enter Academic Year: ', 's');
        cgpa(i) = input('Enter CGPA         : ');
    end

    %  Create and display table
    studentTable = table(name, id, dept, year, cgpa, ...
        'VariableNames', {'Name', 'Student_ID', 'Department', 'Year', 'CGPA'});

    %  Display styled output only if it doest return where it was being called
%     disp(' ');
%     disp(' Student Information Table ');
%     disp(studentTable);
 
end
