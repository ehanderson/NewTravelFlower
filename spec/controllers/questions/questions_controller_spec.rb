require 'spec_helper'

describe QuestionsController do

  describe "GET index" do
    it "assigns @questions to all questions"do
      questions = Question.all
      get :index
      expect(assigns(:questions)).to eq(questions)
    end

    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response.status).to eq (200)
    end

    it "should render index successfully" do
      get :index
      response.status.should eq 200
    end
  end

  describe "GET #show" do
      let(:question) {Question.create(question_text: "emily")}
      let(:answer) {Answer.create(answer_text: "that's right", question_id: question.id)}

    it "requires the :id parameter" do
      expect{get :show}.to raise_error(ActionController::RoutingError)
    end

    it "should load the question" do
      Question.should_receive(:find).with(question.id.to_s)
      get :show, id: question
    end

    it "renders the show templete" do
      get :show, id: question
      expect(response.status).to eq (200)
    end
  end
end
