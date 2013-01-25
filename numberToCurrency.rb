def numberToCurrency(num)
  if !num.is_a? Integer
    puts "Input #{num} is not a integer, return"
    return ''
  end

  def roundQuotential(num, power)
    num = num + 0.0
    quot = num / (10 ** power)
    if(quot > 10)
      return quot.round(0)
    else
      return quot.round(1)
    end
  end

  def outputValue(isNegative, quot, base)
    ret = "$#{quot}" + base
    if(isNegative)
      ret = '(' + ret + ')'
    end
    return ret
  end
      

  isNegative = false
  if(num < 0)
    isNegative = true
    num = -num
  end

  if num > 10 ** 15
    puts "input out of range, only support integers up to 100's of T's"
    return "" 
  end

  if num > 10 ** 12
    quot = roundQuotential(num, 12)
    return outputValue(isNegative, quot, 'T')
  else 
    if num > 10 ** 9
        quot = roundQuotential(num, 9)
        return outputValue(isNegative, quot, 'B')
    else 
      if num > 10 ** 6 
          quot = roundQuotential(num, 6)
          return outputValue(isNegative, quot, 'M')
      else 
        if num > 10 ** 3 
            quot = roundQuotential(num, 3)
            return outputValue(isNegative, quot, 'K')
        else
            return outputValue(isNegative, num, '')
        end
      end
    end
  end
end

if __FILE__ == $0
  puts numberToCurrency(0.0)
  puts numberToCurrency(0)
  puts numberToCurrency(140)
  puts numberToCurrency(1240)
  puts numberToCurrency(78192)
  puts numberToCurrency(501200)
  puts numberToCurrency(5853010238)
  puts numberToCurrency(-1240123)
  puts numberToCurrency(1115853010238)
  puts numberToCurrency(111585301023822)
  puts numberToCurrency(1115853010238222)
  puts numberToCurrency(-111585301023822)
end
