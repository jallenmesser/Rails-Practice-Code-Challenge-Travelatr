class DestinationsController < ApplicationController
  def new
  end

  def edit
  end

  def create
  end

  def index
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def update
  end

  def delete
  end
end
