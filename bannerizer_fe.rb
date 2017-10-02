# bannerizer_fe.rb

def print_in_box(message)

  msg =[]
  msg_split = message.chars

  message == '' ? width = 0 : width = 80
  horizontal_rule = "+#{'-' * (width + 2)}+"
  empty_line = "|#{' ' * (width + 2)}|"
  puts horizontal_rule
  puts empty_line


  if msg_split.size > width
    while msg_split.size > width
      while msg.size < width
        msg << msg_split.shift
      end
      puts "| #{msg.join}#{' ' * (width - msg.join.size)} |"
      msg = []
    end
    while msg.size < width
      break if msg_split == []
      msg << msg_split.shift
    end
    puts "| #{msg.join}#{' ' * (width - msg.join.size)} |"
  else
    while msg.size < width
      break if msg_split == []
      msg << msg_split.shift
    end
    puts "| #{msg.join}#{' ' * (width - msg.join.size)} |"
  end


  #puts "| #{msg}#{' ' * (width - msg.size)} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('During recent rescue excavations the remains of an ancient palaestra were discovered.')
print_in_box('Being in the centre of Athens, there are many restaurants and Cafés, as well as street vendors selling refreshments, close to the sites – and not all seem to be taking advantage of tourists.')
