class SetupDb < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :status

      t.timestamps
    end
    create_table :comments do |t|
      t.integer :article_id
      t.integer :user_is
      t.string :content
      t.string :status

      t.timestamps
    end
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.string :activation_token
      t.string :activation_status

      t.timestamps
    end
  end
end
