class CreatePieces < ActiveRecord::Migration[5.0]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :materials
      t.string :date
      t.integer :height
      t.integer :width

      t.timestamps
    end
  end
end
