# frozen_string_literal: true

class Formatter
  def initialize(percentage)
    @percentage = percentage
  end

  def format
    "#{progress_bar} #{@percentage}%"
  end

  private

  def progress_bar
    p = @percentage.to_i
    solids = p * 15 / 100
    empties = 15 - solids

    "#{'▓' * solids}#{'░' * empties}"
  end
end
