class CreateDares < ActiveRecord::Migration
  def change
    create_table :dares do |t|
      t.string :title
      t.string :description
      t.datetime :end_time
      t.float :amount_pledged

      t.timestamps
    end
  end
end
