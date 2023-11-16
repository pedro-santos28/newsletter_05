module ApplicationHelper

  def gsubHelper(replacingString)
    if Current.template.present?
      Current.template.body.gsub("{{ placeholder }}", replacingString)
    else
      replacingString
    end
  end

end
