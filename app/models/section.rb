class Section < ActiveRecord::Base
  belongs_to :tab
  has_many :questions
end
