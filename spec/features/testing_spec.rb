require 'rails_helper'

RSpec.feature "Testing", :type => :feature do

  scenario "Signup, login and test features" do
    visit "/"
    click_on "sign up"
  end

end