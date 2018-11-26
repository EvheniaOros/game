class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :nickname
      t.integer :age

      t.timestamps
    end
  end
end
