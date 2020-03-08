module ApplicationHelper
  def nav_active(path)
    request.path.split("/").select(&:present?).first == path ? " active" : nil
  end

  def render_nav_actions
    content_tag(:div, class: "b") do
      if @remedy && request.path == remedy_path(@remedy)
        link_to("Bearbeiten", edit_remedy_path(@remedy), class: "btn btn-sm btn-outline-success btn-light mr-1", role: "button") +
        link_to("Löschen", remedy_path(@remedy), class: "btn btn-sm btn-outline-danger btn-light", role: "button", method: :delete, data: { confirm: "Bist du sicher?" })
      end
    end
  end
end
