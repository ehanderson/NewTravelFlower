require 'spec_helper'

describe User do
  describe "#create" do
    it "should require an email, a password and a password confirmation" do
      user = User.new()
      user.save.should eq false
    end
  end
end
