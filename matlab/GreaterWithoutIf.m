function [greaterNumber] = GreaterWithoutIf(inputArg1,inputArg2)
% Implements returning a greater number without using
% IF keyword nor other conditional expressions
%   Detailed explanation goes here

middleValue = (inputArg1+inputArg2)/2;
greaterNumber = middleValue + abs(inputArg2 - inputArg1)/2;
end