# NOTE: A repository of the tasks (Holds all of the model)

class TaskRepository
  def initialize
    @tasks = [] # NOTE: Array of Tasks instanes. NOT an array of strings!
  end

  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def remove(index)
    @tasks.delete_at(index)
  end
end
