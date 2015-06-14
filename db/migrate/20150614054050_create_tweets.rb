class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tweet
      t.string :user_name
      t.string :category
      t.boolean :is_public
      t.timestamps null: false
    end
  end
end
