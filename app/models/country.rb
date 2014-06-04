class Country < ActiveRecord::Base
	has_many :programs
	
	rails_admin do
		list do
			field :name
			field :programs
		end
	end
end
