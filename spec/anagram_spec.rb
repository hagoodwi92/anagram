require('rspec')
require('anagram')

describe("anagram#word_check") do
  it("returns message if words are anagrams") do
    words = Anagram.new("ruby","rat")
    expect(words.word_check()).to(eq("These words aren't anagrams but the following letter/s match: r"))
  end
  it("returns message if words are not anagrams") do
    words = Anagram.new("ruby","rat")
    expect(words.word_check()).to(eq("These words aren't anagrams but the following letter/s match: r"))
  end
  it("returns true if it is an anagram, case insensitive") do
    words = Anagram.new("Aridest","tardies")
    expect(words.word_check()).to(eq("Anagrams!"))
  end
  it("checks for errors if words are not real words") do
    words = Anagram.new("ruby","rb")
    expect(words.check_if_word()).to(eq(false))
  end
  it("checks for 'antigrams' and returns a message") do
    words = Anagram.new("hi","bye")
    expect(words.antigrams()).to(eq("Antigrams!"))
  end
  it("removes punctuation and spaces") do
    words = Anagram.new("acres ruby","cares bury")
    expect(words.spaces()).to(eq(["acresruby", "caresbury"]))
  end
  it("displays how many letters match if not a match") do
    words = Anagram.new("cat","batty")
    expect(words.word_check).to(eq("These words aren't anagrams but the following letter/s match: a,t"))
  end
end
