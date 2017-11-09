def swap_name(name)
  name.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

# also
# def swap_name(name)
#   "#{name.split[1]}, #{name.split[0]}"
# end
