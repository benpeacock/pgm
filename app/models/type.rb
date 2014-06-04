class Type < ActiveRecord::Base
	has_many :questions

	rails_admin do
		list do
			field :name
			field :questions
		end
	end
end
