class VendedorController < ApplicationController
#usuario normal
  before_action only: [:index, :show] do
    authorize_request(["normal","ejecutivo","admin"])
  end
  #usuario ejecutivo
  before_action only: [:new, :edit, :create, :update] do
    authorize_request(["ejecutivo","admin"])
  end
#usuario admin
  before_action only: [:destroy] do
    authorize_request(["admin"])
    end

  def index
    if !user_signed_in?
      redirect_to "/welcome"
    else
    @pagy, @vendedores = pagy(Vendedor.all)

    if params[:vendedor].present?
      @vendedores = @vendedores.search_full_text(params[:vendedor])
      end
    end
  end
end
