# a simple calculator
# we hv learned about variables, if, else,  input,  print,  type casting, operators, conditions
# try to add on it...

print('+=====================+')
print('|  Simple Calculator  |')
print('+=====================+')
num1 = int(input('Enter the first number: '))
num2 = int(input('Enter the second number: '))
operator = input('Enter the operator (+) or (-) or (*) or (/): ')

if operator=='+':
  ans = num1 + num2
elif operator=='-':
  ans = num1 - num2
elif operator=='*':
  ans = num1 + num2
elif operator=='/':
  ans = num1 / num2
else:
  print('unknown operator')

if ans:  
  print('=========================')
  print(f'|   {num1} {operator} {num2} = {ans}')
else:
  print('unknown format...')
