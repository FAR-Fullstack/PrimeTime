class CreateFutureEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :future_events do |t|
      t.string :title
      t.text :description
      t.date :date_end
      t.date :date_start
      t.string :location

      t.timestamps
    end
  end
end
