class Year < ActiveRecord::Base
	has_many :answers
	belongs_to :program

	rails_admin do
		list do
			field :year
		end
	end
end
