class BookingsController < ApplicationController
  def create
    @booking = Booking.create(params[:booking])
    if @booking.bill(params[:stripeToken]) && @booking.charge.paid
      flash[:notice] = "You have successfuly booked #{@booking.time} hours for $#{@booking.charge.amount/100}"
      redirect_to @booking
    else
      flash[:error] = @booking.charge.failure_message
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
