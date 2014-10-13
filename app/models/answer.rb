class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :program
  belongs_to :year

  rails_admin do
    edit do
      field :answer
      field :question
      field :program
      field :year
    end
  end
end
