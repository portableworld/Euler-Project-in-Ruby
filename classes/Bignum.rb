class Bignum
    def is_palindrome?(base = 10)
        num = self
		num = num.to_s(base)
        (0...num.length).each do |i|
            if num[i] != num[(num.length-1)-i]
                return false
            end
        end
		return true
	end
end