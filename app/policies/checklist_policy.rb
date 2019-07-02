class ChecklistPolicy < ApplicationPolicy

  def index?
    user.present?
  end

  def show?
    user.admin?
  end

  def create?
    user.present?
  end

  def new?
    user.present?
  end

  def update?
    user.present?
  end

  def edit?
    user.present?
  end

  def destroy?
    user.present?
  end

end
