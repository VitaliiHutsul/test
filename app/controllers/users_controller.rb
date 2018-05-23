class UsersController < Clearance::UsersController
	
	def index
		@users = User.all
	end	

	def show
 	@user = User.find(params[:id])
	end

	def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if
    @user.update_attributes(user_params)
    else
    render :edit
    end
  end  
	
	private

	def user_params
		params.require(:user).permit(:first_name, :second_name, :email, :password)
	end
end