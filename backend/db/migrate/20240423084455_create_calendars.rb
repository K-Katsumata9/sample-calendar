class CreateCalendars < ActiveRecord::Migration[7.1]
  def change
    create_table :calendars do |t|
      t.string :name, limit: 100, null: false
      t.string :color
      t.boolean :visibility, default: true

      t.timestamps
    end
  end
end
