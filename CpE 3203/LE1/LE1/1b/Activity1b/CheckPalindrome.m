% ----------------------------------------------------------------- %
%  FILENAME    : CheckPalindrome.m
%  COURSE      : CPE 3203
%  GROUP NO.   : 4
%  AUTHOR      : Danica Marie A. Dumalagan
% ----------------------------------------------------------------- %

% Palindrome
function CheckPalindrome(string)
    string_rev = reverse(string);
    
    if strcmpi(string,string_rev)
        fprintf('%s is a palindrome!\n', string)
    else
        fprintf('%s is not a palindrome!\n', string)
    end
end