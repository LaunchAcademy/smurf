class AddProfilePhoto < ActiveRecord::Migration
  def up
    add_column :smurf_profiles, :profile_photo, :string
  end

  def down
    remove_column :smurf_profiles, :profile_photo
  end
end
