module ApplicationHelper
  def cloud_condition(percentage)
    if percentage == 0
      'Sunny (Clear)'
    elsif percentage < 25
      'Mostly Sunny'
    elsif percentage < 50
      'Partly Cloudy'
    elsif percentage < 75
      'Mostly Cloudy'
    else
      'Cloudy'
    end
  end
end
