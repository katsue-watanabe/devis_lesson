class ApplicationController < ActionController::Base
  # deviseのコントローラを使う前に呼ばれるアクション
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    # 新規登録時にnicknameの取得を許可
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # 情報更新時にnicknameの取得を許可
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
