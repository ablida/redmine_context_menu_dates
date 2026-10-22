module ContextMenuStartDateHelper
  include Redmine::Utils::DateCalculation

  def context_menu_start_date_options
    start_of_week = Setting.start_of_week
    start_of_week = I18n.t(:general_first_day_of_week, default: '1') if start_of_week.blank?
    start_day_name = %i[monday tuesday wednesday thursday friday saturday sunday][start_of_week.to_i - 1] || :monday
    [
      [l('context_menu_start_date.today'), Date.today],
      [l('context_menu_start_date.tomorrow'), 1.day.from_now.to_date],
      [l('context_menu_start_date.in_2_days'), 2.day.from_now.to_date],
      [l('context_menu_start_date.next_week'), Date.today.next_occurring(start_day_name)],
      [l('context_menu_start_date.in_7_days'), 7.day.from_now.to_date],
      [l('context_menu_start_date.in_14_days'), 14.day.from_now.to_date],
      [l('context_menu_start_date.in_30_days'), 30.day.from_now.to_date],
      [l('context_menu_start_date.none'), 'none']
    ]
  end
end