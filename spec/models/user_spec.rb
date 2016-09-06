require "rails_helper"

RSpec.describe User, type: :model do

	before do
		@user1 = User.new(id: 1, name: "user1", password: "abab")
		@user1.save
	end

	before do
		OmniAuth.config.test_mode = true
		omniauth_hash = { :provider => 'github',
		            :uid => '2037375',
		            'info' => {
		                'name' => 'Mateus Furquim',
		                'email' => 'furquim.axs@gmail.com',
		                'image' => 'https://avatars.githubusercontent.com/u/2037375?v=3'
		            }
		}
		OmniAuth.config.add_mock(:github, omniauth_hash)
		@auth = {:provider => 'github',
		 				:uid => '2037375'}
	end

	describe "#find_or_create_with_omniauth" do
		it "github" do
			expect(User.find_or_create_with_omniauth(@auth)).to != nil
			expect(auth.uid).to eq @user.auth.uid
		end
	end

	describe "#password" do
		it "changes the password" do
			@user1.password = "cdcd"
			expect(@user1.password).to eq "cdcd"
		end
	end

	describe "#valid_password" do
		it "validates the password" do
			@user1.valid_password?("abab") == true
		end

	end



end
