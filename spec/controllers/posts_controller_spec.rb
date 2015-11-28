require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  # describe "GET #index" do
  #   it "returns http success" do
  #     get :index
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #new" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe "POST #create" do
    let(:post_one) {
      { title: "Hola mundo", description: "descripcion larga para que la validacion pase"}
    }
    #p = FactoryGirl.create(:post)
    before :each do
      post :create, { post: post_one }
    end
    #en este it se ejecuta el :each 
    it { expect(response).to have_http_status 200 }

    it "add post" do
      expect{
        post :create, { post: post_one }
      }.to change(Post,:count).by(1)
    end
  end

end
