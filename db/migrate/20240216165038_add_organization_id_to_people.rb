class AddOrganizationIdToPeople < ActiveRecord::Migration[7.1]
  def change
    add_reference :people, :organization, null: false, foreign_key: true
  end
end
