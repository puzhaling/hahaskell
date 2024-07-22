
removeChar target list = filter (\char -> char == target) list
transformToLowerCase list = map toLower list

isPalindrome str = correctedStr == reverse correctedStr
  where correctedStr = transformToLowerCase ( removeChar ' ' str )
