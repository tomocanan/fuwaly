class StatusesController < ApplicationController
  def index
  end

  def new
    @status = Status.new
  end
end
