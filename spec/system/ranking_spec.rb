require 'rails_helper'

RSpec.describe 'Ranking', type: :system do
  scenario 'Create' do
    pending
    register_player

    click_on 'ランキングを作成する'
    fill_in 'ランキング名', with: 'テスト'
    fill_in '開始日時', with: Time.current
    fill_in '終了日時', with: Time.current.ago(1.month)

    select 'beatmaniaIIDX', from: 'ranking_game'
    select '冥', from: 'ranking_music'
    select 'ANOTHER', from: 'ranking_chart'

    click_on '作成'

    expect(page).to have_content '作成されました'
  end
end
