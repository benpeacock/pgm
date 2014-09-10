class AddQuestionToChoice < ActiveRecord::Migration
  def change
    add_column :choices, :question, :integer
  end
end
