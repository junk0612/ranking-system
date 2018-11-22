require 'rails_helper'

RSpec.describe 'Signup and login', type: :system do
  scenario 'Signup from top page' do
    visit root_path
    expect(page).to have_link '新規登録'

    click_on '新規登録'

    expect(page).to have_content 'Sign up'

    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: 'Password'
    fill_in 'Password confirmation', with: 'Password'

    click_on 'Sign up'

    expect(page).to have_current_path(mypage_path)
  end
end
