class AddCourseTitleToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :course_title, :string
  end
end
