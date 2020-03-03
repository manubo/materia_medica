module RemedyHelper
  def entry_description(remedy, category)
    entry = remedy.entries.find_by(category_id: category.id)
    case entry
    when nil
      content_tag(:span, "Kein Eintrag", class: "text-secondary")
    else
      simple_format(entry.description)
    end
  end
end
