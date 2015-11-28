require 'rails_helper'

RSpec.describe PostsController, type: :request do

  describe "GET #show" do
    before :each do
      @p = FactoryGirl.create(:post)
    end

    it "returns http success" do
      get post_path(@p.id)
      #puts "#{response.body}"
      expect(response).to have_http_status(:success)
    end
  end
end