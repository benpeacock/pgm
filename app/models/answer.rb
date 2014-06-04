class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :program
  belongs_to :year

  rails_admin do
  	list do
  		field :program
  		field :year
  		field :answer
  	end
  end

end
