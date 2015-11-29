module ApplicationHelper
  def active_class(path)
    "active" if current_page? path
  end

  def map_to_select_options(attr, arr_resources)
    options = arr_resources.map do |resource|
      [resource[attr], resource.id]
    end
    options_for_select(options)
  end
end
