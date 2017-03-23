class CreateUserCompetitions < ActiveRecord::Migration[5.0]
  def change
    create_table :user_competitions do |t|
      t.integer :user_id
      t.integer :competition_id
      t.integer :status

      t.timestamps
    end
  end
end
