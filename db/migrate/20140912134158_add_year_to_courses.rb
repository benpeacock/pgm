class AddYearToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :year, index: true
  end
end
