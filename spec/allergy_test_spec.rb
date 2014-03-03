require('rspec')
require('allergy_test')

describe('allergy_test') do
  it('returns users alergies based on their numerical score value') do 
    allergy_test(17).should(eq(['eggs', 'tomatoes']))
  end
end
