class Jobs::AdminShow < RubyView
  layout :admin

  def job_statistics
    super
    p "Spam Probability #{format_percentage @job.spam_probability}"
    p "Super secret admin stat: #{@job.secret_stat}"
  end
end