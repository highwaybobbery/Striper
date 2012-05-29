class AddUserAndTimestampsToBookings < ActiveRecord::Migration
  def change
    add_timestamps :bookings
  end
end
