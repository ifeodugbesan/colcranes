class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contacts, :services, :products, :repuestos, :send_email, :download_pdf]

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

  def repuestos
  end

  def send_email
    contacts = params["contacts"]
    UserMailer.send_email_to_contact(contacts).deliver_now
    redirect_to root_path
  end

  def download_pdf
    send_file "#{Rails.root}/app/assets/images/catalogo-CC2019.pdf", type: "application/pdf", x_sendfile: true
  end
end
