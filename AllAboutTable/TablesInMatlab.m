clc;
clear all;
close all;

% Simple table with 4*2
fprintf('\n---Simple table with 4*2  ---\n');
x = [1; 2; 3; 4];
y = [2.5; 3.1; 3.9; 5.2];
myTable = table(x, y);
% for dispaling the table in the command window
disp(myTable);


clc;
fprintf('\n---afrter adding variable z in myTable ---\n');
% Note: To assign to or create a variable in a table, the number of rows must match the height
% of the table. 
z = [5.1; 5.5; 6.0; 6.3];
myTable.Z_Values = z;
disp(myTable)


fprintf('\n---Adding the header or coloum name to the table---\n');
myTable01 = table(x, y,z, 'VariableNames', {'Time', 'Amplitude','Z value'});
disp(myTable01)

% Taking in put and assigning its type and save it in name
Name =input('Enter a string: ', 's');

% Calling a function student_profile to take 3 students information from the client
fprintf('\n---Calling a function student_profile---\n'); 


%student_profile();      % if the Table do not return anything
x = student_profile();                  % Get the table from function
writetable(x, 'students.csv');         % Export to CSV for sharing

disp('🏆 Top Student Based on CGPA:');
disp(x(find(x.CGPA == max(x.CGPA), 1, 'first'), :));  % Show top performer

sortedTable = sortrows(x, 'CGPA', 'descend');
disp(sortedTable);






