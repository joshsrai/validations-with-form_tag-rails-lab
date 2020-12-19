class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params) #.new because create presaves
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end

# Define controller actions for show, new, and edit.
# Define the "valid path" for the create and update controller actions.
# Define the "invalid path" for the create and update controller actions.