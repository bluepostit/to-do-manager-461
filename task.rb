class Task
  attr_reader :name

  def initialize(name)
    @name = name
    @done = false
  end

  def done?
    @done
  end

  def complete!
    @done = true
  end
end
