class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :infos]

  def home
  end

  def infos
  end
end
