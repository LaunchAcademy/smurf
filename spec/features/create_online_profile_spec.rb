require 'spec_helper'

feature 'smurf completes profile', %q{
  As a smurf
  I want to complete my profile
  So that I can participate in the community
} do
  # Acceptance Criteria
  # * I must specify a name
  # * I must upload a photo

  scenario 'smurf specifies all valid information' do
    name = 'Grumpy'
    visit new_smurf_profile_path
    fill_in "Name", with: name
    # attach_file 'Profile Photo',
      # 'spec/file_fixtures/test_avatar.jpeg'
    click_button 'Create Profile'

    expect(page).to have_content('Profile Created')
    last_smurf = SmurfProfile.last

    expect(last_smurf.name).to eql(name)
    expect(last_smurf.profile_photo).to_not be_nil
  end

  scenario 'smurf specifieds invalid information'
end
