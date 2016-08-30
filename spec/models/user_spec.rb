require "rails_helper"

RSpec.describe User, type: :model do

	before do 
		@user1 = User.new(id: 1, name: "user1")
		@user1.save
		@user2 = User.new(id: 2, name: "user2")
		@user2.save
	end

	describe "#password" do
		it "" do
			expect(@password).to eq @new_password
		end
	end

	describe "#valid_password" do
		it "" do
			expect(@password_to_validate).to eq @password
		end

	end


	# before do 
	# 	OmniAuth.config.test_mode = true
	# 	omniauth_hash = { 'provider' => 'github',
	# 	            'uid' => '12345',
	# 	            'info' => {
	# 	                'name' => 'natasha',
	# 	                'email' => 'hi@natashatherobot.com',
	# 	                'image' => '~/Pictures/saymar.png'
	# 	            }
	# 	}

	# 	OmniAuth.config.add_mock(:github, omniauth_hash)
	# end

	# describe "#find_or_create_with_omniauth" do
	# 	it "" do
	# 		expect(find_or_create_with_omniauth(@auth)).to eq @auth.uid
	# 		expect(auth.uid).to eq @user.auth.uid
	# 	end
	# end

end
