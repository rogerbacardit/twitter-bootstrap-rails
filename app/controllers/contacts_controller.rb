# encoding: utf-8
#
class ContactsController < ApplicationController
  def new
    @load_gmap = true
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(params[:contact_form])
    if @contact_form.save
      flash[:notice] = "Gràcies per contactar amb nosaltres!"
    else
      flash[:error] = "Si us plau, revisi el formulari"
      render action: :new
    end
  end
end
