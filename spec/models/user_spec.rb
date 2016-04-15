require 'spec_helper'

describe User do
  describe "test if admin" do
      it 'should be false' do
        user = User.create(:email => 'email@gmail.com', :password => 'password', :admin => 'false')
        expect(user.admin?).to eq(false)
      end
  end
end

