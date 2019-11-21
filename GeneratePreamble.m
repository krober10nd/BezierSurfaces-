clearvars; close all; clc;
% this can be used to replace all the variable names in automatically gen
% generate code.
n=2+1 ;
count=1;
for i =  1:n
    for j  = 1 : n
        text(count,:)=sprintf('point_x%d_%d=points{%d,%d}(1);',i,j,i,j);
        count=count+1;
        text(count,:)=sprintf('point_y%d_%d=points{%d,%d}(2);',i,j,i,j);
        count=count+1;
        text(count,:)=sprintf('point_z%d_%d=points{%d,%d}(3);',i,j,i,j);
        count=count+1;
    end
end

text