class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.references :tab, index: true
      t.integer :position

      t.timestamps
    end
  end
end
