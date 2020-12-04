class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.integer   :user_id
      t.integer   :theme
      t.integer   :sessions
      t.timestamp :last_login

      t.timestamps
    end
  end
end
