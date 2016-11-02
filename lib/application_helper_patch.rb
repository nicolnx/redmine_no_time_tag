ApplicationHelper.class_eval do
  def time_tag(time)
    text = "#{format_time(time)}"
    if @project
      link_to(text, project_activity_path(@project, :from => User.current.time_to_date(time)), :title => format_time(time))
    else
      content_tag('abbr', text, :title => format_time(time))
    end
  end
end
