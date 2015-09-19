class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    lowKey = String.new("marklar")
    upKey = String.new("Marklar")
    nstr = Array.new
    regex = "\w"
    words = str.split(" ")
    
    words.each_with_index do |var, i|
      
      ep = var.slice(var.length - 1)      
      if var.length > 4
        if var[0] == var[0].upcase
          if /[[:alpha:]]$/.match(ep).to_s.empty? 
            nstr[i] = upKey + ep
          else            
            nstr[i] = upKey 
          end          
        else
          if /[[:alpha:]]$/.match(ep).to_s.empty? 
            nstr[i] = lowKey + ep
          else            
            nstr[i] = lowKey 
          end          
        end 
      else 
        nstr[i] = var     
      end 
    end
    return nstr.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    i = 1
    fib = 1
    prev = 0
    sum = 0
    temp = 0
    until i > nth 
      if fib % 2 == 0
        sum = sum + fib 
      end 
      temp = fib 
      fib = prev + fib  
      prev = temp
      i += 1      
    end
    return sum
  end

end
