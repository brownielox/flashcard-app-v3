class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :subjects, :subject, :name
  end
end
