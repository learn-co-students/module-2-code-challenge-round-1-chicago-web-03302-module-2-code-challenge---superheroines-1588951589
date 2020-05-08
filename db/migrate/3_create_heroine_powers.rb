class CreateHeroinePowers < ActiveRecord::Migration[5.0]
    def change
        create_table :heroine_powers do |t|
            t.integer :heroine_id
            t.integer :power_id

            t.timestamps null: false
        end
    end
end