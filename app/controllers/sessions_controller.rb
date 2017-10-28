class SessionsController < ApplicationController

  def new
  end

  def create
    #login这个方法是sorcery提供的，不仅仅是可以登录，顺便也
    #帮我们设置好了session,登录的用户信息也已经保存到了浏览器
    if user = login(params[:email], params[:password])
      update_browser_uuid user.uuid
      flash[:notice] = "登录成功"
      redirect_to root_path
    else
      flash[:notice] = "邮箱或者密码不正确"
      redirect_to new_session_path
    end
  end

  def destroy
    logout
    flash[:notice] = "退出成功"
    redirect_to root_path
  end

end
