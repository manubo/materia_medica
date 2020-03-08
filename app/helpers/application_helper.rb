module ApplicationHelper
  def nav_active(path)
    request.path.split("/").select(&:present?).first == path ? " active" : nil
  end

  def render_nav_actions
    content_tag(:div, class: "b") do
      if @remedy && request.path == remedy_path(@remedy)
        link_to("Bearbeiten", edit_remedy_path(@remedy), class: "btn btn-sm btn-outline-primary btn-light", role: "button")
      elsif @remedy && request.path == edit_remedy_path(@remedy)
        link_to("Abbrechen", remedy_path(@remedy), class: "btn btn-sm btn-outline-secondary btn-light", role: "button")
      end
    end
  end
end
