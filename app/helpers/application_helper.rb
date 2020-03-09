module ApplicationHelper
  def class_names(*opts)
    result = opts.reduce([]) do |acc, opt|
      case opt
      when String
        acc << opt
      when Array
        acc << opt.join(" ")
      when Hash
        acc << opt.reduce([]) { |acc, o| o[1] ? acc << o[0] : acc }.join(" ")
      end
    end.join(" ")
    result
  end

  def nav_active(path)
    request.path.split("/").select(&:present?).first == path ? " active" : nil
  end

  def render_nav_actions
    content_tag(:div, class: "b") do
      if @remedy&.id
        case request.path
        when remedy_path(@remedy)
          if @remedy.errors.any?
            button_tag("Speichern", id: "submit-remedy-form", class: "btn btn-sm btn-outline-success btn-light mr-1") +
            link_to("Abbrechen", remedy_path(@remedy), class: "btn btn-sm btn-outline-secondary btn-light", role: "button")
          else
            link_to("Bearbeiten", edit_remedy_path(@remedy), class: "btn btn-sm btn-outline-success btn-light mr-1", role: "button") +
            link_to("Löschen", remedy_path(@remedy), class: "btn btn-sm btn-outline-danger btn-light", role: "button", method: :delete, data: { confirm: "\"#{@remedy.name}#{@remedy.acronym ? " - " + @remedy.acronym : ""}\" wirklich löschen?" })
          end
        when edit_remedy_path(@remedy)
          button_tag("Speichern", id: "submit-remedy-form", class: "btn btn-sm btn-outline-success btn-light mr-1") +
          link_to("Abbrechen", remedy_path(@remedy), class: "btn btn-sm btn-outline-secondary btn-light", role: "button")
        when remedies_path
          button_tag("Speichern", id: "submit-remedy-form", class: "btn btn-sm btn-outline-success btn-light mr-1") +
          link_to("Abbrechen", remedies_path, class: "btn btn-sm btn-outline-secondary btn-light", role: "button")
        end
      elsif @remedy && (request.path === remedies_path || request.path === new_remedy_path)
        button_tag("Speichern", id: "submit-remedy-form", class: "btn btn-sm btn-outline-success btn-light mr-1") +
        link_to("Abbrechen", remedies_path, class: "btn btn-sm btn-outline-secondary btn-light", role: "button")
      elsif request.path === remedies_path
        link_to("Neues Mittel", new_remedy_path, class: "btn btn-sm btn-outline-success btn-light mr-1", role: "button")
      end
    end
  end
end
