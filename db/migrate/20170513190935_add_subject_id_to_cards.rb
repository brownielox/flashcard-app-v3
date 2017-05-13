class AddSubjectIdToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :subject_id, :integer
  end
end
