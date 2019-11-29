class AnswersController < ApplicationController
  skip_before_action :authenticate_user!
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
  end

  private

  def answer_params
    params.require(:answer).permit(:name, :present, :mairie, :absent, :number_of_invites, :comment)
  end
end
