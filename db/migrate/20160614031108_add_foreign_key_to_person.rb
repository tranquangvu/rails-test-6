class AddForeignKeyToPerson < ActiveRecord::Migration
  def change
    add_column :people, :father_id, :integer, index: true
    add_column :people, :mother_id, :integer, index: true
  end
end
