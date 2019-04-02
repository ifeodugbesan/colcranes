class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contacts, :services, :products, :download_pdf]

  def home
  end

  def about
  end

  def contacts
  end

  def services
  end

  def products
  end

  def download_pdf
    send_file "#{Rails.root}/app/assets/images/test-pdf.pdf", type: "application/pdf", x_sendfile: true
  end
end
