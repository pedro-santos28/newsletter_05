class ApplicationController < ActionController::Base

    before_action :check_for_template

    def set_current_template(template)
      Current.template = template
    end

    def get_current_template
      @template = Current.template
    end


    def check_for_template
        if session[:template_id]
            Current.template = Template.find_by(id: session[:template_id])
        end
    end

end
