class KittensController < ApplicationController
  include KittensHelper

  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.create(kitten_params)
    if @kitten.save
      flash[:sucess] = "#{@kitten.name} added successfully!"
      redirect_to kitten_path(@kitten)
    else
      flash[:error] = @kitten.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])
    @kitten.update(kitten_params)
    if @kitten.save
      flash[:sucess] = "#{@kitten.name}'s information edited successfully!"
      redirect_to kitten_path(@kitten)
    else
      flash[:error] = @kitten.errors.full_messages.to_sentence
      render :new
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id]).destroy
    flash[:success] = "#{@kitten.name}'s record successfully deleted!"
    redirect_to root_path
  end
end
