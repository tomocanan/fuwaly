class StatusesController < ApplicationController
  def index
    # @satus = Status.all
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
    params.require(:status).permit(:date, :feeling_id, :sleeping_id, :happiness_id, :taking_id)
  end
end
