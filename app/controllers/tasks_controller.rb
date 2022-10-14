class TasksController < ApplicationController
  before_action :authenticate_current_user!, except: %i[index]
  before_action :set_task, only: %i[show edit update destroy]
  before_action -> { authorize @task }, only: %i[show edit update destroy]

  def index
    authorize Task
    @pagy, @tasks = pagy(Task.all.order(title: :asc))
  end

  def show
    @comments = Comment.where(task_id: @task.id)
    @comment = Comment.new
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: [@task.id, @task.title].join('-'),
               template: 'tasks/task',
               formats: [:html],
               disposition: :inline,
               layout: 'pdf'
      end
    end
  end

  def new
    @task = Task.new
    authorize @task
  end

  def create
    authorize Task, :create?

    @task = create_task.task
    if create_task.success?
      redirect_to @task, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if update_task.task
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy!

    redirect_to tasks_path
  end

  private

  def create_task
    @create_task ||=
      CreateTask.call(task_params: task_params, current_user: current_user)
  end

  def update_task
    @update_task ||=
      UpdateTask.call(task_params: task_params, current_user: current_user, task_id: @task.id)
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:project_id, :title, :description, :deadline_at,
                                 :status).merge(user_id: current_user.id)
  end
end
