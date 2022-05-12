class ContactsController < ApplicationController

  def show
    @contact = Contact.find_by({ "id" => params["id"] })
    @company = Company.find_by({ "id" => @contact["company_id"] })
  end

  def new
    @contact = Contact.new
    @compan_id["company_id"] = params ["company_id"]
  end

def create
  @contact = Contact.new
  @contact["first_name"] = params["contact"]["first_name"]
  @company["city"] = params["company"]["city"]
  @company["state"] = params["company"]["state"]
  @company.save
  redirect_to "/companies"
end

end
