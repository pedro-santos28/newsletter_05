class ApplicationController < ActionController::Base

    def set_current_template(template)
      Current.template = template
    end

end
