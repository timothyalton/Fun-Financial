class UsersController < ApplicationController

    def create
        
    end

    def signup
        @user = User.new(user_params)

            ## HOW DO I DO THIS?
            # if @user.role == "parent"
            #     Family.create
            # end

            if @user.valid? 
                @user.save
                render json: {user: UserSerializer.new(@user)}, status: :created
            else
                render json: {error: "Failed to create a user"}, status: :not_acceptable
            end
    end


    private

    def user_params
        params.permit(:username, :password, :password_confirmation, :role, :email, :firstname, :lastname)
    end



end
