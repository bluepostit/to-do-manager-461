require_relative 'task'
require_relative 'tasks_view'

view = TasksView.new
tasks = [Task.new('buy milk'), Task.new('walk the dog')]
view.list(tasks)
