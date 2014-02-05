class AddScoreToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :credit, :integer
  end
end
