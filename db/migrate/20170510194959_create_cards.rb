class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :subject
      t.text :front
      t.text :back

      t.timestamps
    end
  end
end
