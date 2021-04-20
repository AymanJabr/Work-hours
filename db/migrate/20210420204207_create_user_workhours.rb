class CreateUserWorkhours < ActiveRecord::Migration[6.1]
  def change
    create_table :user_workhours do |t|
      t.references :user, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
