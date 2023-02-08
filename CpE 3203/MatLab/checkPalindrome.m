% ----------------------------------------------------------------- %
%  FILENAME    : checkPalindrome.m
%  COURSE      : CPE 3102
%  GROUP NO.   : 3
%  AUTHOR      : Dumalagan, Danica Marie A.
%  DESCRIPTION : Displays if string is a palindrome.
% ----------------------------------------------------------------- %
function checkPalindrome(s)
    s_rev = reverse(s);
    
    if strcmpi(s,s_rev)
        fprintf('%s is a palindrome!\n', s)
    else
        fprintf('%s is not a palindrome!\n', s)
    end