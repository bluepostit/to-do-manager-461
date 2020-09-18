class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      # print the menu
      print_actions
      # get user menu choice
      action = get_user_action
      # run the action for the choice
      dispatch(action)
    end
  end

  def print_actions
    puts '  ~~~ MENU ~~~'
    puts '1. Add a task'
    puts '2. Remove a task'
    puts '3. Mark a task as done'
    puts '4. List your tasks'
  end

  def get_user_action
    puts 'Please enter your choice: '
    print '> '
    gets.chomp.to_i
  end

  def dispatch(action)
    case action
    when 1 then @controller.add
    when 2 then @controller.remove
    when 3 then @controller.mark_as_done
    when 4 then @controller.list
    else
      puts "Please try again."
    end
    puts "\n"
  end
end
