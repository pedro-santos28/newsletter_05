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
    @template = Template.find_by(params[:template_id])
    @templates = Template.all
    set_current_template(@template)

  end

  private

  def template_params
    params.require(:template).permit(:name, :body)
  end

end
