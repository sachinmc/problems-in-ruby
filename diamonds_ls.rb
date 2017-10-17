# diamonds ls solution

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = "*" * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance) { |distance| print_row(grid_size, distance) }
end


# refactoring for:
# diamond(5)
#   *
#  * *
# *   *
#  * *
#   *

# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   stars = " " * number_of_stars
#   stars[0] = '*'
#   stars[-1] = "*"
#   puts stars.center(grid_size)
# end
