class TodolistController < ApplicationController
  def index
  	@todos = Todo.all
  	render :index
  end

  	def new
  		render :new
  	end

  	def create
  		list = params.require(:todos).permit(:name, :description)
  		Todo.create(list)
  		puts params['todos']
  		redirect_to '/todos'
  	end

  	def show
  		id = params[:id]
  		@todo = Todo.find(id)
  	end
end
