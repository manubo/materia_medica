module ApplicationHelper
  def nav_active(path)
    request.path.split("/").select(&:present?).first == path ? " active" : nil
  end
end
