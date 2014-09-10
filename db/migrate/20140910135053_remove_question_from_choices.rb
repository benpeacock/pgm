class RemoveQuestionFromChoices < ActiveRecord::Migration
  def change
    remove_column :choices, :question, :integer
  end
end
