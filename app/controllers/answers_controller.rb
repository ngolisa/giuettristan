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
  end
end
