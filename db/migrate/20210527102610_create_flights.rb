class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :airline
      t.datetime :depart_date
      t.datetime :return_date
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
