class Program < ActiveRecord::Base
  belongs_to :country
  #has_many :answers
  #has_many :years

  rails_admin do
		list do
			field :name
			field :country
		end
	end
end
