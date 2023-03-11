require 'rails_helper'

RSpec.describe 'Choices', type: :request do
  describe 'PATCH /choice/{id}' do
    let(:vote) { FactoryBot.create(:vote) }

    it '投票数が1増えること' do
      expect(vote.choices[0].count).to eq 0

      patch count_up_choice_path(vote.choices[0].id)
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(vote_path(vote))

      expect(vote.reload.choices[0].count).to eq 1
    end
  end
end
