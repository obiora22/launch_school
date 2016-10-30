VOWELS = %w(a e i o u)

arr = %w(hello world i am back again to code)

def delete_vowel(arr)
  p arr.map { |word| word.delete('aeiouAEIOU')}
end

delete_vowel(arr)
