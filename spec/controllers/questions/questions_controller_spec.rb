require 'spec_helper'

describe QuestionsController do

  describe "GET index" do
    it "assigns @questions to all questions" do
      questions = Question.all
      get :index
      expect(assigns(:questions)).to eq(questions)
    end

    it "should render index successfully" do
      get :index
      response.status.should eq 200
    end
  end

  describe "#new" do
    # before :each do 
    #   @question = Question.new(question_text: "Where is Paris?")
    # end

    context "with no parameters"
      it "has no question" do
        question = Question.new
        question.should have(0).questions
      end
    end

    it "returns a new question object" do
      #lambda { Question.new() }.should_not raise_exception ArgumentError
    end

    it "returns the correct question text" do 
      #@question.question_text.should eql "Where is Paris?"
    end
  # end 

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

  describe "POST #create" do 
    # let(:question) {Question.create(question_text: "emily")}

    it "should take two paramaters and return a question object" do
        @question.should_be_an_instance_of Question
    end 
    
    it "should redirect to question path" do
      #pending 
    end 

    it "should redirect to questions#new if question not saved" do
      #pending 
    end

  end
end
