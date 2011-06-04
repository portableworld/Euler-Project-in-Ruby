require "prime"

class Fixnum

  def is_multiple_of?(num)
     self % num == 0
  end
  
  def is_palindrome?()
    num = self
    num = num.to_s
    if num[0] == num[-1] &&
      num[1] == num[-2] &&
      num[2] == num[-3]
      return true
    else
      return false
    end
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
      90 => "ninty"
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

