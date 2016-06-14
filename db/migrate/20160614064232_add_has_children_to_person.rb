class AddHasChildrenToPerson < ActiveRecord::Migration
  def change
    add_column :people, :has_children, :boolean, default: false
  end
end
