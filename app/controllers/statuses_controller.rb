class StatusesController < ApplicationController
  
  # def self.chart
  #   order(date: :asc).pluck('date', 'feeling_id').to_h
  # end

  def index
    # @satuses = Status.all.order("date DESC")
    if user_signed_in?
    @status = current_user.statuses.includes(:user).order("date ASC").pluck(:date, :feeling_id)
    end# @statuses = current_user.statuses
  end

  def looksl
    if user_signed_in?
      @status = current_user.statuses.includes(:user).order("date ASC").pluck(:date, :sleeping_id)
    end
  end

  def lookhp
    if user_signed_in?
    @status = current_user.statuses.includes(:user).order("date ASC").pluck(:date, :happiness_id)
    end
  end


  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.valid?
      @status.save
      return redirect_to root_path
    end
    render 'new'
  end

  private

  

  def status_params
    params.require(:status).permit(:date, :feeling_id, :sleeping_id, :happiness_id, :taking_id).merge(user_id: current_user.id)
  end

  
end
