class CreateJewels < ActiveRecord::Migration[5.0]
  def change
    create_table :jewels do |t|

      t.integer :ruby, null:false
      t.integer :diamond, null:false
      t.integer :emerald, null:false
      t.integer :sapphire, null:false
      t.integer :opal, null:false
      t.integer :gold, null:false
      t.integer :silver, null:false
      t.integer :red, null:false
      t.integer :black, null:false

      t.timestamps
    end
  end
end
