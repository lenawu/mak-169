require 'spec_helper'

describe AdminController do
  describe "check if admin" do
      it "should redirect" do
        user = User.create(:email => 'email@gmail.com', :password => 'password', :admin => 'false')
        expect(user.admin?).to eq(false)
      end
  end
end
      