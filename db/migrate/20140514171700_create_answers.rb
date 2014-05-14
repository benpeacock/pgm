class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answer
      t.integer :question_id
      t.integer :program_id
      t.integer :year_id

      t.timestamps
    end
  end
end
