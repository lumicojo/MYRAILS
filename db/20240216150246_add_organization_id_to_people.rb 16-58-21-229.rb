class AddOrganizationIdToPeople < ActiveRecord::Migration[7.1]
  def change
    add_reference :people, :organization, index: true, foreign_key: true
  end
end
