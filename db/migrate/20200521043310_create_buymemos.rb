class CreateBuymemos < ActiveRecord::Migration[5.2]
  def change
    create_table :buymemos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :memo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
