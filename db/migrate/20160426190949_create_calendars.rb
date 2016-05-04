class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :month
      t.string :day
      t.string :year
      t.timestamps null: false
    end
  end
end
