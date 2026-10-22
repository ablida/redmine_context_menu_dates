Redmine::Plugin.register :redmine_context_menu_dates do
  name 'Redmine Context Menu Dates'
  author 'ablida'
  description 'Quick change issues due date and start date via context menu'
  version '0.0.3'
  url 'https://github.com/ablida/redmine_context_menu_dates'
  author_url 'https://github.com/ablida'
end

include ContextMenuDueDateHelper
include ContextMenuStartDateHelper