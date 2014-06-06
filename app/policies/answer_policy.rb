class AnswerPolicy < ApplicationPolicy
  class Scope < Struct.new(:user, :scope)
	# Changing default permission group of 'admin' to 'user' for these methods so that
	# normal users can create and edit answers to questions.
		def create?
	    user.present? && user.role?(:user)
	  end

	  def update?
	    user.present? && user.role?(:user)
	  end

	  def resolve
	 	  scope
	  end

   end
end