class CreateGpas < ActiveRecord::Migration
  def change
    create_table :gpas do |t|
      t.integer :gpa,	null:false
      t.integer :term,	default:0
      t.references :course, index: true

      t.timestamps
    end
  end
end
