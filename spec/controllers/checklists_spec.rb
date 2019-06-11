require 'rails_helper'
RSpec.describe ChecklistsController, type: :controller do
  let(:user) { User.create(email: 'test@test.com', password: "password", password_confirmation: "password") }

  before do
     sign_in user
  end

  it { should use_before_action(:authenticate_user!) }
  it { should_not use_before_action(:prevent_ssl) }
  #
  # it do
  #   params = {
  #     checklist: {
  #       title: 'Job',
  #       description: 'Some text'
  #     }
  #   }
  #   should permit(:title, :description).for(:create, params: params).on(:checklist)
  # end
  #
  # describe "The #new action" do
  #   before(:each) do
  #     get 'new'
  #   end
  #
  #   it "creates a new checklist" do
  #     expect(assigns(:checklist)).to be_a_new(Checklist)
  #   end
  #
  #   it "creates a new checklist" do
  #       expect(response).to render_template :new
  #   end
  # end
  #
  # describe "#show" do
  #   before do
  #     @checklist = FactoryBot.create(:checklist)
  #   end
  #
  #   it "renders the #show view, responds successfully" do
  #     get :show, params: { id: @checklist.id }
  #     expect(response).to be_successful
  #     expect(response).to render_template :show
  #   end
  # end
  #
  # describe "#index" do
  #   before do
  #     @checklist = FactoryBot.create(:checklist)
  #   end
  #
  #   it "renders the #index view,responds successfully" do
  #     get :index
  #     expect(response).to have_http_status "200"
  #     expect(response).to render_template :index
  #   end
  # end
  #
  # describe "#new" do
  #   before do
  #     @checklist = FactoryBot.create(:checklist)
  #   end
  #
  #   it "enders the #new view, responds successfully" do
  #     get :new, params: { id: @checklist.id }
  #     expect(response).to be_successful
  #     expect(response).to render_template :new
  #   end
  # end
  #
  # describe "#edit" do
  #   let(:checklist) { FactoryBot.create(:checklist) }
  #
  #   it "renders the #edit view, responds successfully" do
  #     get :edit, params: { id: checklist.id }
  #     expect(response).to be_successful
  #     expect(response).to render_template :edit
  #   end
  # end
  #
  # describe "#update" do
  #   before do
  #     @checklist = FactoryBot.create(:checklist)
  #   end
  #
  #   it "updates a checklist" do
  #     checklist_params = FactoryBot.attributes_for(:checklist,
  #       title: "Old Checklist title")
  #     patch :update, params: { id: @checklist.id, checklist:  FactoryBot.attributes_for(:checklist,
  #       title: "New Checklist title") }
  #     expect(@checklist.reload.title).to eq "New Checklist title"
  #   end
  #
  #   it "does not update and render edit" do
  #     checklist_params = FactoryBot.attributes_for(:checklist,
  #       title: "New Checklist title")
  #     patch :update, params: { id: @checklist.id, checklist:  FactoryBot.attributes_for(:checklist,
  #       title: "") }
  #     expect(@checklist.reload.title).to render_template :edit
  #   end
  #
  #   it "renders the #edit view, responds successfully" do
  #     get :edit, params: { id: @checklist.id }
  #     expect(response).to be_successful
  #     expect(response).to render_template :edit
  #   end
  # end
  #
  # describe "#create" do
  #   let(:checklist_params) { FactoryBot.attributes_for(:checklist) }
  #
  #   it 'should create new checklist' do
  #     expect {
  #       post :create, params: { checklist: checklist_params }
  #     }.to change(Checklist, :count).by(1)
  #   end
  # end
  #
  # describe "#destroy" do
  #   let!(:checklist) { FactoryBot.create(:checklist) }
  #
  #   it 'should create new checklist' do
  #     expect {
  #       delete :destroy, params: { id: checklist.id }
  #     }.to change(Checklist, :count).by(-1)
  #   end
  #
  #   it "redirects to #index" do
  #     delete :destroy, params: { id: checklist.id }
  #     expect(response).to redirect_to checklists_url
  #   end
  # end
  #
  #   it { should route(:get, '/checklists').to(action: :index) }
  #   it { should route(:get, '/checklists/1').to(action: :show, id: 1) }
  #
  #   it do
  #      should route(:get, '/checklists', port: 3000).
  #      to('checklists#index')
  #   end
end
