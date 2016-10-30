str = 'Four score and and seven.'

def word_counter(str)
  words = str.split(" ")
  p words
  count_hash = Hash.new(0)
  words.each do |word|
    count_hash[word.length] += 1
  end
  p count_hash
end

# exclude non-word letters
def word_counter2(str)
  hash = Hash.new(0)
  str.split(" ").each do |word|
    # word.gsub!(/\W+/,"") # not idiomatically correct
    word = word.delete('^A-Za-z')
    hash[word.length] += 1
  end
  p hash
end

word_counter("hello hi!")
word_counter2("hello hi!")
