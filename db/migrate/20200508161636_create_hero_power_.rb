class CreateHeroPower < ActiveRecord::Migration[5.1]
  def change
    create_table :hero_power_s do |t|
      t.integer :heroine_id
      t.integer :power_id
    end
  end
end
