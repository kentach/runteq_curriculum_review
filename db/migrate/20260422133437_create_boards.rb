class CreateBoards < ActiveRecord::Migration[7.2]
  def change
    create_table :boards do |t|
      t.timestamps
      t.string :title, null: false
      t.text :body, null: false
      t.references :user, null: false, foreign_key: true
    end
  end
end
