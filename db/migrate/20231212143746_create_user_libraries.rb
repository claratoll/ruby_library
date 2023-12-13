class CreateUserLibraries < ActiveRecord::Migration[7.1]
  def change
    create_table :user_libraries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.integer :rating
      t.string :status

      t.timestamps
    end
  end
end
