class TaskPolicy < ApplicationPolicy
  alias task record

  def index?
    user.present?
  end

  def create?
    user.id == task.project.user_id
  end

  def update?
    user.id == task.user_id
  end

  def destroy?
    update?
  end

  def show?
    user.present?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
