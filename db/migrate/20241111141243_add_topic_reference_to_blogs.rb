class AddTopicReferenceToBlogs < ActiveRecord::Migration[7.2]
  def change
    add_reference :blogs, :topic, foreign_key: true, null: true
  end
end
