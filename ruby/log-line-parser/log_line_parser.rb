class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    lines = @line.split(':')
    lines[1].strip
  end

  def log_level
    lines = @line.split(':')
    log_level = lines[0].strip
    log_level = log_level.gsub("\[", '')
    log_level = log_level.gsub("\]", '')
    log_level.downcase!
  end

  def reformat
    message + ' (' + log_level + ')'
  end
end
