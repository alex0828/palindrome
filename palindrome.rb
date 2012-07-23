class PalindromeCount
  def isPalindrome?(string)
    string == string.reverse
  end
  
  def minPalCount(str)  
    if isPalindrome?(str)
      return 1
    elsif str.length == 2
      return 2
    else
      min = str.length
      for i in 1..str.length-2
        min = [minPalCount(str[0..i]) + minPalCount(str[i+1..str.length-1]), min].min
      end
      return min
    end
  end
  
  def ans(str)
    str = str.downcase.scan(/\w/)
    puts "str = #{str}"
    puts minPalCount(str)
  end

end

PalindromeCount.new.ans('Never a foot too far,even')



