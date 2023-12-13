class UserLibrariesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_libraries = current_user.user_libraries
  end

  def create
    @user_library = current_user.user_libraries.new(user_library_params)

    if @user_library.save
      redirect_to books_path, notice: 'Boken har lagts till i ditt bibliotek!'
    else
      redirect_to books_path, notice: 'Något gick fel. Försök igen.'
    end
  end


  def update
    @user_library = current_user.user_libraries.find_by(id: params[:id])

    if @user_library && @user_library.update(user_library_params)
      redirect_to user_libraries_path, notice: 'Bokens information har uppdaterats i ditt bibliotek!'
    else
      redirect_to user_libraries_path, notice: 'Något gick fel. Försök igen.'
    end
  end

  private

  def user_library_params
    params.require(:user_library).permit(:book_id, :status, :rating)
  end

end
