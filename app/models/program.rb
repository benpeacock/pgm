class Program < ActiveRecord::Base
  belongs_to :country
  has_many :answers

  rails_admin do
		list do
			field :name
			field :country
		end
	end
end
