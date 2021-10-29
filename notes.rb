# NOTE: MVC Basics!

# REVIEW: ROUTER ->
# The router recieves the users' request in the main menu and hits corresponding action in the Controller *NOT A PART OF THE MVC* 
# The user request hits the [Router] that dispatches to the [create_task] action in the [Controller].

# The [create_task] hits the [get_new_task_description] instance method of the [View] which gets the new task description.

# The [Controller] then creates a new instance of [Tasks] with its description, and sends it to the [Repository] via its #add(task) instance method.

# REVIEW: Controller
# The role of the [Controller] is to fetch data from the [Task Repository] and send it to the [View]
# Recieve data from the View and send it to the [TaskRepository]
