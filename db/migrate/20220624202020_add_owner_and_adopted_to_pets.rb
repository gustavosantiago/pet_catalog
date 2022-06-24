class AddOwnerAndAdoptedToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :owner, :string
    add_column :pets, :adopted, :boolean, default: false
  end
end
