class AddProgramToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :program, index: true
  end
end
