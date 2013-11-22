class CreateMicroblogposts < ActiveRecord::Migration
  def change
    create_table :microblogposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
