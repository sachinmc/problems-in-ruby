# HASH = { 'B' => 'O', 'X' => 'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A', 'G' => 'T',
#          'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U', 'V' => 'I', 'L' => 'Y',
#          'Z' => 'M' }.freeze

# def block_word?(word)
#   letters = word.upcase.chars
#   result = HASH.select do |key, val|
#     letters.include?(key) || letters.include?(val)
#   end
#   result.size == word.size
# end

# LS Solution

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')
