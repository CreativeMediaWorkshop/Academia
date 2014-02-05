class CreateInAndOuts < ActiveRecord::Migration
  def change
    create_table :in_and_outs do |t|
      t.integer :term,	default:0
      t.integer :in
      t.integer :out
      t.references :course, index: true

      t.timestamps
    end
  end
end
