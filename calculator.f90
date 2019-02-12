program calculator
  real :: a, b, calcResult
  character*3 :: operation

  print *, "Hello Fortran! Which Operation?(add, sub, mul, div)"
  read *, operation

  print *, "Which X?"
  read *, a

  print *, "Which Y?"
  read *, b

  if (operation .EQ. 'add') then 
    calcResult  = a + b
  
  else if (operation .EQ. 'sub') then 
    calcResult  = a - b
 
  else if (operation .EQ. 'mul') then 
    calcResult  = a * b
  
  else if (operation .EQ. 'div') then 
    if ( b .EQ. 0) then
      print *, "Error: Division with Zero."
    else
      calcResult  = a / b
    end if
  
  end if

  print *, "Result is: "
  print *, calcResult
end program calculator
