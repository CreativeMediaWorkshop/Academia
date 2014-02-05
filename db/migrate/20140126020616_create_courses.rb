class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title,	null:false
      t.text :description
      t.integer :seiue_id,	null:false
      t.boolean :if_open,	default:true
      t.string :subject

      t.timestamps
    end
  end
end
