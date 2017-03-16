class CreateCompChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :comp_challenges do |t|
      t.integer :competition_id
      t.integer :challenge_id

      t.timestamps
    end
  end
end
