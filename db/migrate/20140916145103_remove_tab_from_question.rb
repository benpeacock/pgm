class RemoveTabFromQuestion < ActiveRecord::Migration
  def down
    change_table :questions do |t|
      t.change :tab, :reference
    end
  end
end
