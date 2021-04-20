class CreateGroupWorkhours < ActiveRecord::Migration[6.1]
  def change
    create_table :group_workhours do |t|
      t.references :workhour, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
