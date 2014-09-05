module Jekyll

  module CustomFilters

    # Sort elements, case-insensitive
    def sort_nocase(input, property = nil)
      input.sort_by! { |i| i.to_liquid[property].downcase }
    end
  end

end

Liquid::Template.register_filter(Jekyll::CustomFilters)
