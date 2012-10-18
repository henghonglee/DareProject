class AddingAssociations < ActiveRecord::Migration
  def up
    add_column :dares , :user_id , :integer
    add_column :submits , :user_id , :integer
    add_column :submits , :dare_id , :integer
  end

  def down
  end
end
