class AddAllowcopyprevToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :allow_copy_prev, :boolean, default: true
  end
end
