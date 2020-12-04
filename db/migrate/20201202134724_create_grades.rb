class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.integer :grade, :null => false
      t.integer :weighting, :null => false, :default => 1
      t.integer :subject_id

      t.timestamps
    end
  end
end
