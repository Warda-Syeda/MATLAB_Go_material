%% Matlab Beginners Course Notes
% Making Choices

%% Challenge 1

% Write code to work out which number is bigger (and try changing the
% values of num1 and num2 to make sure your code always works)

num1 = 40;
num2 = 25;

%% Challenge 1 - Extension

% Write code to decide whether a number is at least 10% higher than
% a threshold value

% We've started the code for you to make it easier ->

threshold = 37;
number = 40;
 
% Work out what 10 percent of the threshold is


% Check if number is bigger than ( threshold + 10% of threshold ) 



%% Extension - exploring logic

% The logical function converts a statement to its logical value - either a
% 1 or a 0

% Read the following statements - try and guess what the answer
% will be before you check

logical(0 == false)

logical(1 == true)

logical(42 == true)

logical(42)

logical(0 && (8 || 1))

logical(0 && 8 || 1)
    
logical([1 2 3 4])

logical([1 2 3 4] == [1 2 5 4])

logical('hello' == 'hello')

% What happens if you use a vector with an if statement

if([1 2 4 6])
    disp('it worked')
end

% What about a string?

if('hello')
    disp('it worked')
end



%% Challenge 2

% Edit the lesson code so it also displays the sum of the negative values

% list of numbers to test
numbers = [-5, 3, 2, -1, 9, 6];

% initialise value to zero
total = 0;     

% loop through each element in "numbers" vector
for n = numbers 
    
    % checks if the number is positive
    if n >= 0
        % add it to the total of positive numbers
        total = total + n;        
    % closes the "if" statement
    end
    
% closes the "for" loop    
end

% display the sum
disp(['sum of positive values: ', num2str(total)])

%% Challenge 2 - Extension

%Using the commands we have learnt previously, write a script that loads in 
%some Pokemon data and select one Pokemon vector randomly 
%(choose any Pokemon you like  or use randi() command. 
%HINT: remember how to slice a single vector out of a data matrix?). 
%Analyse this Pokemon vector and display its Pokedex number if 
%its before CP is greater than 10 or after CP is greater than 100 or player 
%level is less than 30.

% Here are a few lines of code to get you started :)

clear;
clc;
 
% Concatenate CP data
Pokemon_CP_all = [Pokedex_Num CP_before CP_after Level];

% Generate single random integer
