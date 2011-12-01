class Application < RubyLayout
  def render
    html do
      render_head
      render_body
    end
  end

  def render_head
    head do
      asset_tags
      metadata
      title
    end
  end

  def render_body
    div.content do
      yield
    end
  end

  def asset_tags
    javascript_tag "foobar"
    css_tag "barbaz"
  end

  def metadata
    meta :name => "description", :content => "This is a great page"
  end

  def title
    "My Awesome Application"
  end
end