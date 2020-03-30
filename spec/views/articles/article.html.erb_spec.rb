RSpec.describe '/articles/my', type: :feature do
  # before(:each) do
   @user = FactoryBot.build(:user)
  # end
  # let login as M
  # Create 2 dimension Hash              
  $xvars = Hash.new()
  $xvars["form_article"] = Hash.new()
  $xvars["form_article"]["title"] = "New Title"
  $xvars["form_article"]["body"] = "New Body"
  $xvars["form_article"]["text"] = "New Text"
  $xvars["form_article"]["keywords"] = "New Keywords"
  $xvars["user_id"] = @user.id
  before do
   visit "/jinda/init?s=articles:new_article"
  end 

  context 'when user is signed in' do
    it 'shows My New Article Content' do
    expect(page.status_code).to eq(200)
    end
  end

end
