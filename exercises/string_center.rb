def center_of(str)
  middle_index = str.size / 2
  odd_center = str[middle_index]
  even_center = str[(middle_index - 1)..(middle_index) ]
  str.length.odd? ? odd_center : even_center
end

p center_of('HELLO!')
