class Bignum
  def is_palindrome?(base = 10)
    num = self
    num = num.to_s(base)
    (0...num.length).each do |i|
      return false if num[i] != num[(num.length-1)-i]
    end
    true
  end
end
