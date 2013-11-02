class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question_text
      t.integer :user_id
      t.integer :view_count

      t.timestamps
    end
  end
end
