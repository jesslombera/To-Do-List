class TodolistController < ApplicationController
  def index
  	@todo = Todo.all
  	render :index
  end

  	def new
  		render :new
  	end

  	def create
  		todo = require[:todo].permit(:name, :description)
  		Todo.create(todo)
  		redirect_to '/todo'
  	end
end
