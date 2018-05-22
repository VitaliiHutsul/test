class UsersController < Clearance::UsersController
	private

	def user_params
		params.require(:users).permit(:first_name, :second_name, :email, :password)
	end
end