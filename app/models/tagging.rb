class Tagging < ActiveRecord::Base
  attr_accessible :answer_id, :tag_id

  belongs_to :tag
  belongs_to :answer
end
