class RenamePisteToOffPistes < ActiveRecord::Migration[5.0]
  def change
    rename_table :pistes, :off_pistes
  end
end
