class AddAuthorIdToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column(:quotes, :author_id, :integer)
  end
end
