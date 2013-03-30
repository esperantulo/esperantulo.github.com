require 'i18n'


locales_path = File.expand_path('../i18n/', __FILE__)
files = Dir["#{locales_path}/*.yml"]

files.each do |file|
  locales = YAML.load_file(file)
  locales.each do |locale, translations|
    I18n.backend.store_translations(locale, translations)
  end
end

I18n.default_locale = :eo
