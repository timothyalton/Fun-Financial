class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def create
        
    end

    def signup
        @families = Family.all
        # @family = Family.create({family_pin: "test123"})
        byebug
        if user_params[:family_id] == false
            @family = Family.create!({family_pin: "test123"})
            # user_params[:family_id] = @family.id
        else
            @family = @families.find_by!(family_pin: user_params[:family_id])
            # user_params[:family_id] = @family.id
        end

        @user = User.new(user_params)
            @user.family_id = @family.id
            byebug
            if @user.valid? 
                @user.save
                render json: {user: UserSerializer.new(@user).as_json}, status: :created
            else
                errors_message = @user.errors.messages
                render json: {error: "Failed to create a user"}, status: :not_acceptable
                @family.destroy
            end
    end


    private

    def user_params
        params.permit(:username, :password, :password_confirmation, :role, :email, :firstname, :lastname, :family_id)
    end

    # params.require(:user).permit(:username, :password, :password_confirmation, :role, :email, :firstname, :lastname, :family_id)



end
