class RegistrationsController < Devise::RegistrationsController

	private

	def sign_up_params
	params.require(:user).permit(:full_name, :email, :password)
	end
	def account_update_params
	params.require(:user).permit(:full_name, :email, :password, :password_confirmation, :current_password, :subscription_seats, :address1, :address2, :postal_code, :city, :country)
	end
end