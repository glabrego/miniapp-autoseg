class TodosController < ApplicationController

	before_action :set_list


	def create
		
		@todo = @list.todos.create(todo_params)

		redirect_to @list
	end

	private

	def set_list
		@list = current_user.lists.find(params[:list_id])
	end

	def todo_params
		params[:todo].permit(:task)
	end

end
