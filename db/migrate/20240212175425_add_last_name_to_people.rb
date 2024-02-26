class AddLastNameToPeople < ActiveRecord::Migration[7.1]
  def change
    add_column :people, :last_name, :string

  end
end

