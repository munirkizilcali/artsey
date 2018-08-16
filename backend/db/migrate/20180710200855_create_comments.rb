class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :username
      t.string :artsey_link
      t.string :content

      t.timestamps
    end
  end
end
