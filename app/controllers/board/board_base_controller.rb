class Board::BoardBaseController < ApplicationController
  # layout :application

  # 用户验证
  def user_authenticate
    # user_id = session['user_id']
    # user = User.query_first_by_id user_id
    #
    # render :json => {status: {code: 800, message: '请先登录'}} if user.blank?
    #
    # @user = user
    # params[:user] = @user
  end
end