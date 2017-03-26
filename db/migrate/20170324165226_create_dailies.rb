class CreateDailies < ActiveRecord::Migration[5.0]
  def change
    create_table :dailies do |t|
      t.integer :sunshine
      t.integer :gamecount
      t.integer :competition_id
      t.integer :user_id

      t.timestamps
    end
  end
end
