class AddSectionToQuestion < ActiveRecord::Migration
  def change
    add_reference :questions, :section, index: true
  end
end
