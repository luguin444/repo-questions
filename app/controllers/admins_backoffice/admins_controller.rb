class AdminsBackoffice::AdminsController < AdminsBackofficeController
  def index
    @admins = Admin.all()
  end

  def edit 
    id = params[:id]
    @admin = Admin.find(id)
  end

  def update 
    id = params[:id]
    admin = Admin.find(id)

    params_admin = params.require(:admin).permit(:email, :password, :password_confirmation)

    if admin.update(params_admin)
      redirect_to admins_backoffice_admins_path # redireciona para a index
    else 
      render :edit # renderiza a ação novamente
    end
    # email, password, password_confirmation = params[:admin]
  end
end
