class TemplatesController < ApplicationController

  def new
    @template = Template.new
  end

  def create
    @template = Template.new(template_params)

    if @template.save
      redirect_to root_path, notice: "Templated has been added."
    else
      render :new, status: :unprocessable_entity, alert: "Error on adding template, try again!"
    end
  end

  def select
    @template = Template.find_by(id: params[:template_id])
    @templates = Template.all
    @emails = Email.all
    session[:template_id] = @template.id
    set_current_template(@template)
  end

  def destroy
    @template = Template.find_by(id: params[:template_id])
    session[:template_id] = nil
  end

  private

  def template_params
    params.require(:template).permit(:name, :body)
  end

end
