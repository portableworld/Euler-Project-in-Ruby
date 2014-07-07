require "prime"

class Fixnum

  def all_divisors
    divisors = Array.new
    (1...Math.sqrt(self).to_i).each do |num|
      if self % num == 0
 	divisors << num
        divisors << self/num
      end
    end
    divisors.sort
  end
    
  def is_multiple_of?(num)
    self % num == 0
  end
  
  def is_palindrome?(base = 10)
    num = self
    num = num.to_s(base)
    (0...num.length).each do |i|
      return false if num[i] != num[(num.length-1)-i]
    end
    true
  end
    
  def is_lychrel?()
    num = self
    (1..50).each do |i|
      num = num + num.to_s.reverse.to_i
      return false if num.is_palindrome?
    end
    true
  end
    
  def is_pandigital?()
    num = self.to_s
    (1..num.size).each do |n|
      if num.include?(n.to_s) # Maybe ternary would look better?
        num.slice!(n.to_s)
      else
        return false
      end
    end
    true
  end
	
  def can_become_pandigital?()
    d = ""
    i = 1
    until d.length >= 9
      d += (self*i).to_s
      i += 1
    end
    return false if d.length > 9
    d_tester = d.clone
    (1..9).each do |n|
      if d_tester.include?(n.to_s)
        d_tester.slice!(n.to_s)
      else
        return false
      end
    end
    true
  end
    
  def pandigitize()
    d = ""
    i = 1
    until d.length >= 9
      d += (self*i).to_s
      i += 1
    end
    d
  end

  def get_next_number()
    num = self
    if num.even?
      return num/2
    else
      return (num*3) + 1
    end
  end

  def is_bouncy?()
    num = self
    num = num.to_s
    asc = false
    dsc = false

    (1..num.size-1).each do |i|
      if num[i].to_i >= num[i-1].to_i
        asc = false
      else
        asc = true
        break
      end
    end

    (1..num.size-1).each do |i|
      if num[i].to_i <= num[i-1].to_i
        dsc = false
      else
        dsc = true
        break
      end
    end

    if asc && dsc
      return true
    else
      return false
    end
  end
  
  def is_factor_of?(num)
    num % self == 0
  end
  alias :is_factor_of :is_factor_of?
  
  def to_triangle()
    (self * (self + 1))/2
  end

  def to_words()
    # Only writing up to 1,000 capacity
    words = {
      0 => "",
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thir",
      14 => "four",
      15 => "fif",
      16 => "six",
      17 => "seven",
      18 => "eigh",
      19 => "nine",
      20 => "twenty",
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety"
    }
    return case 
      when self < 13
        words[self]
      when self < 20
        words[self] + "teen"
      when self < 100 && self % 10 == 0
        words[self]
      when self < 100
        (self.to_s[0].to_i * 10).to_words + " " + self.to_s[1].to_i.to_words
      when self >= 100 && self % 100 == 0
        self.to_s[0].to_i.to_words + " hundred"
      when self >= 100
        (self.to_s[0].to_i).to_words + " hundred and " + self.to_s[1..2].to_i.to_words
    end

  end
  
  def million
    self * (10**6)
  end
end

