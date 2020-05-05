class AddCategoryToPastEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :past_events, :category, :string
  end
end
