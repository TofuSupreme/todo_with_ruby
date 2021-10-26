# NOTE: Responsible for put and get from the user

class TasksView
  def display(tasks)
    tasks.each_with_index do |task, index|
      status = task.done? ? ['x'] : '[ ]'
      p "#{status} #{index + 1} - #{task.description}"
    end
  end

  def ask_user_for_description
    p 'What do you want to do?'
    gets.chomp
  end

  def ask_user_for_index
    p 'Index?'
    gets.chomp.to_i - 1
  end
end
