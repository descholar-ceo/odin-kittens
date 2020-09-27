module KittensHelper
  def display_all_kittens(kittens)
    result = "<div>#{link_to('Create a new kitten', new_kitten_path)}</div>"
    if kittens.count.positive?
      kittens.each do |kitten|
        result << "<br/><div>#{link_to(kitten.name, kitten)}</div>"
      end
    else
      result << '<br/><span>No kitten found yet sorry!</span>'
    end
    result.html_safe
  end
end
