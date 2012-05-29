class AddChargeToBilling < ActiveRecord::Migration
  def change
    add_column :bookings, :charge, :string, null: false
  end
end
