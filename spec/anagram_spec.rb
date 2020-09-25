require('rspec')
require('anagram')

describe("anagram#word_check") do
  it("returns message if words are not anagrams") do
    words = Anagram.new()
    expect(words.word_check("acres","cares")).to(eq("Anagrams!"))
  end
  it("returns true if it is an anagram, case insensitive") do
    words = Anagram.new()
    expect(words.word_check("Aridest","tardies")).to(eq("Anagrams!"))
  end
  it("checks for errors if words are not real words") do
    words = Anagram.new()
    expect(words.check_if_word("ruby","ruby")).to(eq(true))
  end
end