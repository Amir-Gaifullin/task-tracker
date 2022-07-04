class UpdateTask
  class SendNotifications
    include Interactor

    delegate :task, :current_user, to: :context

    def call
      send_email_notification
      create_activity
    end

    private

    def create_activity
      RegisterActivityJob.perform_later(current_user.id, 'task_updated', task.id, 'Task')
    end

    def send_email_notification
      TaskMailer.task_update(Task.last, User.last).deliver_later
    end
  end
end
