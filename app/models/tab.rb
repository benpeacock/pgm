class Tab < ActiveRecord::Base
	#has_many :questions

	rails_admin do
		list do
			field :name
			field :position
		end
	end
end
