class CreateSubmits < ActiveRecord::Migration
  def change
    create_table :submits do |t|
      t.string :user_submitted
      t.string :username_submitted
      t.timestamps
    end
  end
end
