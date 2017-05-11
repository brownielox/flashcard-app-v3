class RemoveSubjectFromCards < ActiveRecord::Migration[5.0]
  def change
    remove_column :cards, :subject, :string
  end
end
