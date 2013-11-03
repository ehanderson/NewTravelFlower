class Answer < ActiveRecord::Base
  attr_accessible :answer_text, :question_id, :user_id, :tag_names
attr_accessor :tag_names
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :votes

  belongs_to :question
  belongs_to :user

  after_save :assign_tags


  private

  def assign_tags
    p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
      self.tags = @tag_names.split(/\s+/).map do |name|
        Tag.create(:name => name)
       end
  end
end
