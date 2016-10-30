string = 'four score and seven'

def capitalize(string)
  words = string.split()
  words = words.map { |w| w.capitalize }
  words.join(' ')
end

p capitalize(string)

def capitalize2(string)
  words = string.split.map(&:capitalize)
  words.join 
end
