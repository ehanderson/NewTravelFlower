require 'spec_helper'

describe TagsController do

  describe "#show" do
    let(:tag) {Tag.create(name: "scenicviews")}
  end

  it "should load the tag" do
      Tag.should_receive(:find).with(tag.id.to_s)
      get :show, id: tag
    end


end
