require 'debugger'

def prev_sum(num)
#debugger
  if num == 0
    return 0
  else
    return num + prev_sum(num - 1)
  end
end

def fib(num)
  if num == 0
    return 0
  elsif num == 1
    return 1
  else
    return fib(num - 1) + fib(num - 2)
  end
end

def paren(num)
 num * 2
end
