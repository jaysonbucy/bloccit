require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe UsersHelper, type: :helper do
  let :topic { create( :topic ) }
  let :user { create( :user ) }
  let! :post { create( :post, topic: topic, user: user ) }

  describe "#has_posts" do
    it "returns true if the user has posts" do
      expect(has_posts(user)).to eq(true)
    end

    it "returns false if the user does not have posts" do
      user.posts.destroy_all
      expect(has_posts(user)).to eq(false)
    end
  end

  describe "#favorites_gravatar" do
    it "returns a gravatar url" do
      expected_gravatar_id = Digest::MD5::hexdigest(user.email).downcase
      expect(favorites_gravatar(user.id))
        .to eq("http://gravatar.com/avatar/#{expected_gravatar_id}.png?s=#{40}")
    end
  end
end
