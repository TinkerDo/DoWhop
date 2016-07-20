class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string   :name
      t.string   :description
      t.integer  :cost
      t.string   :location
      t.time     :time
      t.date     :date

      t.timestamps
    end
  end
end
