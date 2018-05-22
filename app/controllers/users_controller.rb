class UsersController < Clearance::UsersController
	def index
		@users = User.all
	end	

	def show
 	@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:users).permit(:first_name, :second_name, :email, :password)
	end
end