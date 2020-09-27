module KittensHelper
  def display_all_kittens(kittens)
    result = ''
    if kittens.count.positive?
      kittens.each do |kitten|
        result << link_to(kitten.name, kitten)
      end
    else
      result << '<span>No kitten found yet sorry!</span>'
    end
    result.html_safe
  end
end
