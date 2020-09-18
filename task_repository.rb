class TaskRepository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def add(task)
    @tasks << task
  end

  def remove(index)
    @tasks.delete_at(index)
  end

  def get(index)
    @tasks[index]
  end
end
