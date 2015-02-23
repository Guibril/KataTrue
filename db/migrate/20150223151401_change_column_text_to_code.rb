class ChangeColumnTextToCode < ActiveRecord::Migration
  def change
  	change_table :exercices do |t|
      t.rename  :text, :code
    end
  end
end
