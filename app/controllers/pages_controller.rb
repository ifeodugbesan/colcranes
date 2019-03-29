class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contacts, :services]

  def home
  end

  def about
  end

  def contacts
  end

  def services

  end
end
