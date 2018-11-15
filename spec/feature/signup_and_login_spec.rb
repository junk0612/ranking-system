require 'rails_helper'

RSpec.describe 'Signup and login', type: :feature do
  scenario 'Signup from top page' do
    visit root_path
    expect(page).to have_link '新規登録'
  end
end
