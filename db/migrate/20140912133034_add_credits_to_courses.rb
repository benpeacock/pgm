class AddCreditsToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :course_credits, :string
  end
end
