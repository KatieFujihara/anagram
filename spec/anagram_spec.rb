require('rspec')
require('anagram')
require('pry')

describe('#anagram') do
  it("if words are upper and lower case, make them all lower case to be compared") do
  new_anagram_downcase = Anagram.new('TeA EaT')
  expect(new_anagram_downcase.downcase('TeA EaT')).to(eq("tea eat"))
  end


  it("if a string does not include a vowel (a, e, i ,o ,u, y) it is not a word and will return 'You need to input actual words!'") do
  new_anagram_vowel = Anagram.new('sdfgh jkl')
  expect(new_anagram_vowel.anagram_check('sdfgh jkl')).to(eq('You need to input actual words!'))
  end

  it("if two words have the same letters return 'This is an anagram' if not, return 'This is not an anagram'") do
  new_anagram_check = Anagram.new('tea eat')
  expect(new_anagram_check.anagram_check('tea eat')).to(eq("This is an anagram"))
  end

end
