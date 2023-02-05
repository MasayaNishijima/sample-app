require 'rails_helper'

RSpec.describe "Votes", type: :system do
  scenario '投票の作成から投票の実行まで' do
    visit votes_path
    click_on 'New Vote'

    fill_in 'Title', with: 'すきなすし'
    fill_in 'vote_choices_attributes_0_name', with: 'サーモン'
    fill_in 'vote_choices_attributes_1_name', with: 'まぐろ'

    click_on 'Create Vote'

    expect(page).to have_content 'Vote was successfully created.'
    expect(page).to have_button '投票', count: 2

    expect(page).to have_content 'サーモン0'
    expect(page).to have_content 'まぐろ0'

    within 'form[action="/choices/1"]' do
      click_on '投票'
    end

    expect(page).to have_content 'サーモン1'
    expect(page).to have_content 'まぐろ0'
  end
end
