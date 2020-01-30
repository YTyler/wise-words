class AddDateToQuote < ActiveRecord::Migration[5.2]
  def change
    add_column(:quotes, :date, :string)
  end
end
