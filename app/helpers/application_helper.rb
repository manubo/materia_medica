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
      if @remedy&.id && request.path == remedy_path(@remedy)
        link_to("Bearbeiten", edit_remedy_path(@remedy), class: "btn btn-sm btn-outline-success btn-light mr-1", role: "button") +
        link_to("Löschen", remedy_path(@remedy), class: "btn btn-sm btn-outline-danger btn-light", role: "button", method: :delete, data: { confirm: "\"#{@remedy.name}#{@remedy.acronym ? " - " + @remedy.acronym : ""}\" wirklich löschen?" })
      elsif request.path == remedies_path
        link_to("Neues Mittel", new_remedy_path, class: "btn btn-sm btn-outline-success btn-light mr-1", role: "button")
      end
    end
  end
end
