class CreateSmurfProfiles < ActiveRecord::Migration
  def change
    create_table :smurf_profiles do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
