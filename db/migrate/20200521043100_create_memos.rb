class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.references :user,  null: false, foreign_key: true
      t.string :title,     null: false
      t.string :text,      null: false
      t.integer :price
      t.boolean :public,   null: false, default: false
      t.integer :sellcount

      t.timestamps
    end

    add_index :memos, :title
  end
end
