class CreateGarages < ActiveRecord::Migration[6.1]
  def change
    create_table :garages do |t|
      t.string :location

      t.timestamps
    end
  end
end
