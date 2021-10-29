require_relative 'tasks_viewer'

class TasksController
  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  def list
    display_tasks
  end

  def create
    description = @view.ask_user_for_description
    task = Task.new(description)
    @repository.add(task)
  end

  def mark_as_done
    display_tasks
    index = @view.ask_user_for_index
    task = @repository.find(index)
    task.mark_as_done!
  end

  def destory
    p display_tasks
    index = @view.ask_user_for_index
    @repository.remove(index)
  end

  private

  def display_tasks
    tasks = @repository.all
    @view.display(tasks)
  end
end
