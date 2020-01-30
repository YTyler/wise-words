class AddColumnsToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column(:authors, :flag, :string)
    add_column(:authors, :ssn, :string)
  end
end
