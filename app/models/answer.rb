class Answer < ActiveRecord::Base
  attr_accessible :answer_text, :question_id, :user_id, :tag_names
attr_accessor :tag_names
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :votes
  belongs_to :question
  belongs_to :user
  accepts_nested_attributes_for :taggings
  after_save :assign_tags


  private

  def assign_tags

    p "---------------------------------------------"
    p @tag_names
    self.tags = @tag_names.map do |tag|
      tag.map do |tag_name|        

        Tag.create(:name => tag_name)
      end

      end

  end   
end
