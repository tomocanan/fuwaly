class StatusesController < ApplicationController

  def index
    if user_signed_in?
    @status = current_user.statuses.includes(:user).order("date ASC").pluck(:date, :feeling_id)
    end
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
    redirect_to action: :index unless user_signed_in?
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.valid?
      @status.save
      return redirect_to root_path
    else
    render 'new'
    end
  end

  private

  def status_params
    params.require(:status).permit(:date, :feeling_id, :sleeping_id, :happiness_id, :taking_id).merge(user_id: current_user.id)
  end

end
