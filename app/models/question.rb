class Question < ActiveRecord::Base
  belongs_to :tab
  belongs_to :type
  has_many :answers
  has_many :choices

  rails_admin do
		edit do
			field :question, :wysihtml5
			field :type
			field :tab
			field :position
      field :allow_copy_prev
		end
	end
end
