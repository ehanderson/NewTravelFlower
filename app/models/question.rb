class Question < ActiveRecord::Base
  attr_accessible :question_text, :user_id, :view_count

  belongs_to :user
  has_many :answers


end
