class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :program
  belongs_to :year
end
