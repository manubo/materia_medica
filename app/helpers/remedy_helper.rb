module RemedyHelper
  def entry_description(entry)
    if entry.description.present?
      simple_format(entry.description)
    else
      content_tag(:span, "Kein Eintrag", class: "text-secondary")
    end
  end
end
