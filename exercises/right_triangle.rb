def right_triangle(n)
  space = n - 1
  star = 1
  n.times do
    puts (' ' * space) + ('*' * star)
    space -= 1
    star += 1
  end
end
right_triangle(6)
