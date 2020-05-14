class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.string :name, null: false
      t.string :title, null: false
      t.string :message, null: false

      t.timestamps
    end
  end
end
