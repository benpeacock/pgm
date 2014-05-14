class Question < ActiveRecord::Base
  belongs_to :tab
  belongs_to :type
end
