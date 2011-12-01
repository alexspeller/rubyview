class Jobs::Show < RubyView
  def render
    h2 @job.title
    p @job.description
    div.stats job_statistics
    render :map
  end

  def job_statistics
    p "Viewed: #{@job.view_count} times"
    p "Applied: #{@job.application_count} times"
  end
end