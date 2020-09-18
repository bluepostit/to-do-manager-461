require_relative 'task_repository'
require_relative 'tasks_controller'
require_relative 'task'
require_relative 'router'


repo = TaskRepository.new
task = Task.new('buy milk')
task.complete!
repo.add(task)

repo.add(Task.new('walk the dog'))

ctlr = TasksController.new(repo)
# ctlr.list


########

# ctlr.add
# ctlr.list


#######
# ctlr.remove
# ctlr.list

######

# ctlr.mark_as_done
# ctlr.list


router = Router.new(ctlr)
router.run
