class Year < ActiveRecord::Base
	has_many :answers

	rails_admin do
		list do
			field :year
		end
	end
end
