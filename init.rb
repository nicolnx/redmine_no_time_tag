require 'redmine'

Redmine::Plugin.register :redmine_no_time_tag do
  name 'Show full time instead of time tags'
  author 'Nikolay Popov'
  description 'This will display the full time instead of time tags'
  version '1.0.0'
  url 'https://github.com/nicolnx/redmine_no_time_tag'

  Rails.application.config.after_initialize do
    require 'application_helper_patch'
  end
end
