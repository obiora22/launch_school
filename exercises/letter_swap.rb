str = "I have a way to refactor my code"

def swap(str)
  result = str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  p result.join(" ")
end

swap(str)

str2 = "---what's my +*& line?"

def clean_string(str)
  p str.gsub(/[^a-z]/i," ").squeeze
  p str.gsub(/\W+/, " ")
end

clean_string(str2)

def clean_string2(str)
  arr = ('a'..'z').to_a
  result = str.split("").map { |char| char.replace(" ") if !arr.include? char ; char}
  p result.join("").squeeze
end

clean_string2(str2)
