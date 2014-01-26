class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter,	null:false
      t.string :title,	null:false
      t.text :content
      t.references :course, index: true

      t.timestamps
    end
  end
end
