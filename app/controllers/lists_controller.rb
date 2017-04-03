class ListsController < ApplicationController
  
  before_action :set_list, only: [:show, :edit, :update, :destroy, :is_closed?]
  before_action :authenticate_user!, except: [:index, :show]

  def index
  	@lists = List.all
    @users = User.all
  end

  def show
    
  end

  def new
  	@list = List.new
    @list.todos.new
  end

  def edit
  end

  def create
  	@list = current_user.lists.new(list_params)
    @list.todos.first.user_id = current_user.id

  	if @list.save
  		redirect_to root_path, notice: "List was successfuly created!"
  	else
  		render action: :new
  	end
  end

  def update
    
  	if @list.update(list_params)
  	 redirect_to @list, notice: "List was successfuly updated!"
  	else
  	 render action: :edit
  	end
  end

  def destroy
  	@list.destroy
  	redirect_to lists_url, notice: "List was successfuly destroyed!"
  end

  def is_closed?
  	@list.close
  end

  private

  def set_list
  	@list = List.find(params[:id])
  end

  def list_params
  	params.require(:list).permit(:title, :public, :close, todos_attributes: [:task, :close]  )
  end

end
