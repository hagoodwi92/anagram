require('rspec')
require('anagram')

describe("anagram#word_check") do
  it("returns false if words are not anagrams") do
    words = Anagram.new()
    expect(words.word_check("arising","raginis")).to(eq(true))
  end

end