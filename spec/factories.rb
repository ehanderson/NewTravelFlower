FactoryGirl.define do
  factory :user do
    name "Alexander Larson"
    email "alexisboss@heckyes.biz"
    password "golly"
  end

  factory :invalid_user do
    name "Alex Rulez"
    email "alexisboss@heckyes.biz"
    password nil
  end

  factory :question do
    title "is alex neat?"
    question_text "i've heard he is"
  end

  factory :answer do
    answer_text "alex is neat!"
  end

end
