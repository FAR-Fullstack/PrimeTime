class AddCategoryToFutureEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :future_events, :category, :string
  end
end
