%Five_Column_Canvas_Generator
%Generates a canvas csv file in which the first four columns are the
%canvas you generated with GradedGenerator2_Sandwich.m and the fifth column
%is the first column of total_ex_gen_morphblend. 
CanvasName = input('Enter canvas name: ', 's'); % YourStructure.csv
% load variable total_ex_gen_morphblend from the saved workspace which is
% matlab.mat
load('matlab.mat','total_ex_gen_morphblend');% loading workspace variables stored in matlab.mat (I saved the workspace as matlab.mat.You can give it different name)
Four_c_Canvas = csvread(CanvasName);
Four_c_Canvas(:,5) = total_ex_gen_morphblend(:,1); % I do NOT believe this is the right source for this column anymore; replace it with the correct one when found

% To select a different column of total_ex_gen_morphblend, change the 1
% above to any number between 2 and 25. To get all 25 canvases at once, use
% Five_Column_Canvases_Generator.m instead; it will take a very, very long
% time, so don't use this one until you know that the numbers in the fifth
% column are actually right; that is, until we are no longer taking them
% from total_ex_gen_morphblend.

newname = input('Enter structure name: ', 's'); % Might want to write this as YourStructurePlus1.csv
csvwrite(newname, Four_c_Canvas)