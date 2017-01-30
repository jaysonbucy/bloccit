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
  let :post { create( :post, topic: topic, user: user ) }

  context "lists favorite posts" do

  end
end
