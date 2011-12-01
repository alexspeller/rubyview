class Admin < Application
  def asset_tags
    super
    javascript_tag "admin_javascript"
    css_tag "admin_css"
  end

  def title
    "Admin (plz do not hack)"
  end
end