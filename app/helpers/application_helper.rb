module ApplicationHelper
  def markdown(text)
    options = {
        autolink: true,
        space_after_headers: true,
        no_intra_emphasis: true
    }
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
    markdown.render(text).html_safe
  end

  def markdown_hint(text='')
    markdown("#{text} Please look at #{link_to '**Markdown Syntax**', 'https://daringfireball.net/projects/markdown/syntax', target: '_blank'} to format your text")
  end

end
