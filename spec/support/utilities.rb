  
  def full_title(page_title)
  base_title="Simple PM"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end