class Tag < ActiveRecord::Base
  attr_accessible :name, :question_id

  has_many :taggings
  has_many :answers, through: :taggings
end
