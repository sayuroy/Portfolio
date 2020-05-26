class CreateMemoLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :memo_labels do |t|
      t.references :memo, null: false, foreign_key: true
      t.references :label, null: false, foreign_key: true

      t.timestamps
    end
  end
end
