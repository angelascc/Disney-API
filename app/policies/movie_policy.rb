class MoviePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def create?
    user.present?
  end

  def destroy?
    update?
  end
end
