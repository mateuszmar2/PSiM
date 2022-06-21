class ReservationController < ApplicationController

def list
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.create_or_find_by(reservation_params)
  end 

  def update
    @reservation.update(reservation_params)
  end

  def destroy
    @reservation.delete
  end

  def reservation_params
    params.require(:reservation).permit(:user_id, :parking_spot_id, :reservation_start, :reservation_end)
  end
end
