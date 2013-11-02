require "spec_helper"

describe AnswersController do
  describe "GET index" do
    it "assigns @answer" do
      answer = Answer.create
      get :index
      expect(assigns(:answer)).to eq([answer])
    end
  end

  describe 'DELETE'

end
