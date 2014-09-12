class AddHoursToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :course_hours, :string
  end
end
