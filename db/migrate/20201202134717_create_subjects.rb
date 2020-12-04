class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string  :name
      t.string  :teacher
      t.string  :color
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
