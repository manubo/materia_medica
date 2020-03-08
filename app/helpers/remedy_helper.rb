module RemedyHelper
  def entry_description(entry)
    if entry.description.present?
      simple_format(entry.description)
    end
  end
end
