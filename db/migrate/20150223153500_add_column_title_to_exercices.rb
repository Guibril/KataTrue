class AddColumnTitleToExercices < ActiveRecord::Migration
  def change
      add_column :exercices, :title, :string
  end
end
