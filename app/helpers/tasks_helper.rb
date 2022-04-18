module TasksHelper
  def change_status(task)
    task.status = case task.status
                  when 'not_started'
                    'started'
                  when 'started'
                    'finish'
                  end
  end
end
