class AccountController < AuthenticatedController
  def show
  end

  def update
    if current_user.update_attributes(account_update_params)
      render :show, notice: 'Updated.'
    else
      render :show, error: 'Error while updating.'
    end
  end

  protected

  def account_update_params
    update_params = params.require(:user).permit(:name)
    update_params[:name] = update_params[:name].strip
    update_params
  end
end
