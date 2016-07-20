class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :cost
      t.string :description
      t.datetime :datetime
      t.string :location
      t.integer :host_id

      t.timestamps
    end
  end
end
