class CreateCompetitions < ActiveRecord::Migration[5.0]
  def change
    create_table :competitions do |t|

      t.string :name
      t.string :user, foreign_key: true
      t.integer :user_id
      t.integer :challenge_id
      t.integer :goal

      t.timestamps
    end
  end
end
