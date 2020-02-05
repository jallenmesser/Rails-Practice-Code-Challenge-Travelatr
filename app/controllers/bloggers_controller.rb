class BloggersController < ApplicationController
  before_action :find_blogger, only: [:edit, :show, :update, :delete]

  def new
    @blogger = Blogger.new
  end

  def edit
  end

  def create
    @blogger = Blogger.create(blogger_params)
    if @blogger.valid?
      redirect_to blogger_path(@blogger)
    else
      flash[:errors] = @blogger.errors.full_messages
      redirect_to new_blogger_path
    end
  end

  def index
    @bloggers = Blogger.all
  end

  def show
    # @blogger = Blogger.find(params[:id])
  end

  def update
  end

  def delete
  end

  private

  def blogger_params
    params.require(:blogger).permit(:name, :age, :bio)
  end

  def find_blogger
    @blogger = Blogger.find(params[:id])
  end

end
