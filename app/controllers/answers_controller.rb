class AnswersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :confirmed]
  # , only: [:new]
  def index
    @answers = Answer.all
  end

  def show
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to confirmed_path
    else
      render 'new'
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update(answer_params)
      redirect_to answers_path
    else
      render 'update'
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to answers_path
  end

  def confirmed
  end

  private

  def answer_params
    params.require(:answer).permit(:name, :present, :mairie, :absent, :number_of_invites, :comment, :invite1, :invite2, :invite3, :invite4, :invite5, :invite6)
  end
end
