class BookingsController < ApplicationController
  def create
    @booking = Booking.create(params[:booking])

    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
