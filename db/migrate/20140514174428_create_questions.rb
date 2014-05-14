class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.references :tab, index: true
      t.references :type, index: true
      t.integer :position

      t.timestamps
    end
  end
end
