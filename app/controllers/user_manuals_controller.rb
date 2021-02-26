class UserManualsController < Devise::RegistrationsController
    before_action :user_params_config, if: :devise_controller?
    def create 
        
        @user = User.create(user_params)
        sign_in(@user)
        if @user.user_type == "Shelter" && @user.save
            redirect_to new_shelter_path
        elsif !@user.save
            render :new
        else 
            redirect_to root_path
        end 
    end
    
    

    def user_params_config
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :user_type, :address, :city, :zip_code, :birth_date, :photo, :shelter_name, :email, :password, :password_confirmation])
    end 
    def user_params 
        params.require(:user).permit( :first_name, :last_name, :user_type, :address, :city, :zip_code, :birth_date, :photo, :shelter_name, :email, :password, :password_confirmation)
    end 
end
