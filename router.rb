class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    p '---'
    p 'What do you want to do?'
    p '1 - Display tasks'
    p '2 - Add a new task'
    p '3 - Mark a task as done'
    p '4 - Remove a task'
    p '---'
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.mark_as_done
    when 4 then @controller.destory
    else
      p 'Please type 1, 2, 3, or 4'
    end
  end
end
