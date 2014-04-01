module Spree
  BaseHelper.module_eval do
    alias_method :original_available_countries, :available_countries
    def available_countries
      original_available_countries.sort { |a, b| a.name <=> b.name }
    end
  end
end
