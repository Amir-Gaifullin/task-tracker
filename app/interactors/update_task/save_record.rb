class UpdateTask
  class SaveRecord
    include Interactor

    delegate :current_user, :prepared_task_params, :task_id, to: :context

    def call
      context.task = task
      context.fail!(error: 'Invalid data') unless task.update(prepared_task_params)
    end

    private

    def task
      @task ||= Task.find(task_id)
    end
  end
end
