# bannerizer_fe_rf.rb
# add words to the array/msg
# check msg size, remember to check with space string.join(' ')
# if msg size is less than width, increment index, so onto adding the next
# word
# else if msg size is greater than the width, pop the last word,
# empty message onto the screen with puts, reset msg buffer (msg = [])
# continue until index reaches end of words array, that is all words have been checked


def print_in_box(message)

  msg =[]
  index = 0
  words = message.split(' ')

  message == '' ? width = 0 : width = 80
  horizontal_rule = "+#{'-' * (width + 2)}+"
  empty_line = "|#{' ' * (width + 2)}|"

  puts horizontal_rule
  puts empty_line

  while index < words.length
    msg << words[index]
    if msg.join(' ').size > width
      msg.pop
      puts "| #{msg.join(' ')}#{' ' * (width - msg.join(' ').size)} |"
      msg = []
    else
      index += 1
    end
  end
  puts "| #{msg.join(' ')}#{' ' * (width - msg.join(' ').size)} |"

  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('During recent rescue excavations the remains of an ancient
palaestra were discovered.')
print_in_box('Being in the centre of Athens, there are many restaurants and Cafés,
as well as street vendors selling refreshments, close to the sites – and not all
seem to be taking advantage of tourists.')
print_in_box("This is the end of the world as we know it and I feel fine.
Oh I feel fine, yes I feel fine. Yeah I feel fine. The other day I drifted
continental divide. Milton Berstein.")
