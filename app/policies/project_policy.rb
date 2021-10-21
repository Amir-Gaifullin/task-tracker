class ProjectPolicy < ApplicationPolicy
  alias_method :project, :record

  def index?
    true
  end

  def create?
    user.present?
  end

  def update?
    user.id == project.user_id
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
