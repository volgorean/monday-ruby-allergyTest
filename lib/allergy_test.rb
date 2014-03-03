def allergy_test(score)
  allergies = ['eggs', 
              'peanuts', 
              'shellfish', 
              'strawberries', 
              'tomatoes', 
              'chocolate', 
              'pollen', 
              'cats']
  bit_field = []
  val = score
  result = []

  7.downto(0) {|i|
    bit = val / 2**i
    val %= 2**i
    bit_field[i] = bit
  }

  for i in 0..7
    if bit_field[i] == 1
      result << allergies[i]
    end
  end

  result
end
