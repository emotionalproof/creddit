class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user_id, null: false, foreign_key: true
      t.belongs_to :activity_id, null: false, foreign_key: true
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end