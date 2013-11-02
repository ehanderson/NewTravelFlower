class Question < ActiveRecord::Base
  attr_accessible :question_text, :title, :user_id, :view_count

  belongs_to :user
  has_many :answers
  has_many :tags

end
