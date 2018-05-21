class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #ログイン後、ユーザー情報のページにリダイレクト
    else
      #エラーメッセージ作成
      flash.now[:danger] = 'invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
