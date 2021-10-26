# NOTE: Controls the CRUD of tasks (Controller)
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
    # NOTE: Get description from view
    description = @view.ask_user_for_description
    # NOTE: Create a new task
    task = Task.new(description)
    # NOTE: Add to repo
    @repository.add(task)
  end

  def mark_as_done
    # NOTE: Display list with indices
    display_tasks
    # NOTE: Ask user for index
    index = @view.ask_user_for_index
    # NOTE: Fetch task from repo
    task = @repository.find(index)
    # NOTE: Mark task as done
    task.mark_as_done!
  end

  def destory
    # NOTE: Display list with indices
    p display_tasks
    # NOTE: Ask user for index
    index = @view.ask_user_for_index
    # NOTE: Remove from repository
    @repository.remove(index)
  end

  private

  def display_tasks
    # NOTE: Fetch tasks from repo
    tasks = @repository.all
    # NOTE: Send them to view for display
    @view.display(tasks)
  end
end
