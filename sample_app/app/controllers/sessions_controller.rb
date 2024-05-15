class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      # ログイン後にユーザ情報のページにリダイレクト
      reset_session # ログイン前にこれを必ず書く
      log_in user
      redirect_to user
    else
      # エラーメッセージの作成
      flash.now[:danger] = "Invalid email/password combination"
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
  end
end
