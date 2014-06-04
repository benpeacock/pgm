class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answer
      t.references :question, index: true
      t.references :program, index: true
      t.references :year, index: true

      t.timestamps
    end
  end
end