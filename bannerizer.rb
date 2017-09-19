# bannerizer.rb

def print_line(line,length)
  count = 0
  new_line = ""
  while count < length
    new_line = new_line + line
    count += 1
  end
  new_line
end

def print_in_box(string)
  puts "+-#{print_line('-',string.length)}-+"
  puts "| #{print_line(' ',string.length)} |"
  puts "| #{string} |"
  puts "| #{print_line(' ',string.length)} |"
  puts "+-#{print_line('-',string.length)}-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
