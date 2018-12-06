module SystemSpec
  module SessionHelper
    def login(email, password, remember_me: false)
      visit "/login"

      fill_in 'email', with: email
      fill_in 'password', with: password
      if remember_me
        find('.form-checkbox__label[for="remember_me"]').click
      end
      click_button 'ログイン'
    end

    def register_player(email: 'test@example.com', password: 'Password')
      visit root_path
      click_on '新規登録'

      fill_in 'Email', with: email
      fill_in 'Password', with: password
      fill_in 'Password confirmation', with: password

      click_on 'Sign up'
    end
  end
end
