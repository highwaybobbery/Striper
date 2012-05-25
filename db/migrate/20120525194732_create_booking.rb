class CreateBooking < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.column :time, :integer, null: false
      t.column :email, :string, null: false
      t.column :description, :string, null:false
    end

    add_index :bookings, :email
  end
end
