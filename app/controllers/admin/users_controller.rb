class Admin::UsersController < AdminController

  def new_session
    if current_administrator
      redirect_to edit_admin_home_path(Home.first)
    else
      render 'admin/users/sign_in'
    end
  end

  def create_session
    username = params[:user][:username]
    password = params[:user][:password]

    @user = User.where(:username=>username, :password=>password).first

    if @user.present?
      session[:user_id] = @user.id
      redirect_to edit_admin_home_path(Home.first)
    else
      flash[:danger] = "帳號密碼輸入錯誤"
      render 'admin/users/sign_in'
    end
  end

  def destroy_session
    session[:user_id] = nil
    redirect_to admin_path
  end


end
