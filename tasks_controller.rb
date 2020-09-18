require_relative 'tasks_view'

class TasksController
  def initialize(task_repository)
    @task_repository = task_repository
    @tasks_view = TasksView.new
  end

  def list
    tasks = @task_repository.all
    @tasks_view.list(tasks)
  end

  def add
    # get input from the user via the VIEW
    task_name = @tasks_view.ask_user_for_name
    # use input to create a new Task
    task = Task.new(task_name)
    # add it to the repo
    @task_repository.add(task)
  end

  def remove
    list
    index = @tasks_view.ask_user_for_index
    @task_repository.remove(index)
  end

  def mark_as_done
    list
    index = @tasks_view.ask_user_for_index
    task = @task_repository.get(index)
    task.complete!
  end
end
