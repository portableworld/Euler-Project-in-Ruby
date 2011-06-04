class String

  def to_place_in_alphabet
    places = [
      "nothing",
      "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l",
      "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
    ]
  
    return places.index(self.downcase)
  end

end