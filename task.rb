# TODO: Build a TODO manager
# NOTE: A model for the TODO manager
class Task
  attr_reader :description

  def initialize(description)
    @description = description
    @done = false
  end

  def done?
    @done
  end

  def mark_as_done!
    @done = true
  end
end
