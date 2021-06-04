Welcome to U4(i)A! A very pleasant social media app. ☺︎
fork and clone this repo and run rails s -p 3000 to fire up the back end!

# Features

-Register or login user if one already exists
-Upload image with message to be posted on the social media feed
-Like button added

# Code example

users_controller.rb

```
def login
  @user=User.find_by(username: params[:user][:username])

    if @user&&@user.authenticate(params[:user][:password])
      @token=JWT.encode({user_id: @user.id}, Rails.application.secrets.secret_key_base[0])
      render json: {user: @user, token: @token}
    else
      render json: {error: "Invalid Credentials"}, status: :unauthorized
  end
```

# Status

U4(i)A is currently in it's infancy. In the future I would like to implement a comment section and a addFriends feature :)

# Contact

For any further questions, please email me at joannsiciliano@gmail.com, or find me on linkDIn at https://www.linkedin.com/in/joannsiciliano/ :)

thanks for looking! 💖
