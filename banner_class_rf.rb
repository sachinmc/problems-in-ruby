# constructing a banner

class Banner
  def initialize(message, width=-1)
    @message = message
    @width = width
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    return "+-#{'-' * @message.size}-+" if @width == -1
  end

  def empty_line
    return "| #{' ' * @message.size} |" if @width == -1
  end

  def message_line
    return "| #{@message} |" if @width == -1
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
p banner
puts banner

banner = Banner.new('')
puts banner
