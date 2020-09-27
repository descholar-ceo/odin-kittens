module KittensHelper
  def display_all_kittens(kittens)
    result = ''
    if kittens.count.positive?
      kittens.each do |kitten|
        result << "<br/><div>#{link_to(kitten.name, kitten)}</div>"
      end
    else
      result << '<span>No kitten found yet sorry!</span>'
    end
    result.html_safe
  end
end
