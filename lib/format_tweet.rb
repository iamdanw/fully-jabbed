# frozen_string_literal: true

require './lib/formatter'

class FormatTweet
  attr_accessor :percentage

  def initialize(args)
    @percentage = args[0]
  end

  def run
    puts Formatter.new(percentage).format
  end
end

FormatTweet.new(ARGV).run if $PROGRAM_NAME == __FILE__
