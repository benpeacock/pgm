class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    raise Pundit::NotAuthorizedError, "Must be logged in" unless user
    @user = user
    @record = record
  end

  def index?
    user.present? && (user.role?(:user) || user.role?(:admin))
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    user.present? && (user.role?(:user) || user.role?(:admin))
  end

  def new?
    create?
  end

  def update?
    user.present? && (user.role?(:user) || user.role?(:admin))
  end

  def edit?
    update?
  end

  def destroy?
    user.present? && user.role(:admin)
  end

  def scope
    record.class
  end
end
