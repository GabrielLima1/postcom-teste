class DesiresController < ApplicationController
  before_action :set_desire, only: [:edit, :update, :show, :destroy]
  def new
		@desire = Desire.new
	end

	def create
		@desire = Desire.create(desire_params)
		respond_with @desire
		#flash[:success] = 'Contas Criadas.'
		#redirect_to desires_path
	end

	def update
		@desire.update(desire_params)
    	respond_with @desire
	end

	def show
		respond_with @desire
	end


	def index
    @desires = Desire.where(user_id: current_user.id)
		#@desires = Desire.all.order(:created_at)
    # @user = User.find(current_user)
    # @desires = @user.desire
	  # @desires = Desire.paginate(:page => params[:page])
    #                       		 .order(created_at: :asc)
	end

	def destroy
		@desire.destroy
		redirect_to desires_path, alert: "Pedido Deletado!"
	rescue
		redirect_to desires_path, alert: "Não foi possivel deletar"
	end

	private
	def set_desire
		@desire = Desire.find(params[:id])
	end

	def desire_params
		params.require(:desire).permit(:title, :action ,:description, :avatar, :account_id, :user_id)
  end
end
