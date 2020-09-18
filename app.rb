require_relative 'task_repository'
require_relative 'tasks_controller'
require_relative 'router'

repo = TaskRepository.new
ctlr = TasksController.new(repo)
router = Router.new(ctlr)
router.run
