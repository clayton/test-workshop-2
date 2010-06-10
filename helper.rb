class Helper

  def self.foo
    "foo"
  end

  def image_size(profile, non_rep_size)
    if profile.user.rep?
      '190x114'
    else
      non_rep_size
    end
  end

  def display_small_photo(profile, html = {}, options = {})
    display_photo(profile, image_size(profile, "32x32"), html, options)
  end

  def display_medium_photo(profile, html = {}, options = {})
    display_photo(profile, image_size(profile, "48x48"), html, options)
  end

  def display_large_photo(profile, html = {}, options = {}, link = true)
    display_photo(profile, image_size(profile, "64x64"), html, options, link)
  end

  def display_huge_photo(profile, html = {}, options = {}, link = true)
    display_photo(profile, image_size(profile, "200x200"), html, options, link)
  end

  def display_photo(profile, size, html = {}, options = {}, link = true)
    return "wrench.png" unless profile  # this should not happen

    return "NO DEFAULT" if options[:show_default] == false && !profile.has_valid_photo?
    return default_photo(profile, size, {}, link) unless profile.has_valid_photo?


    link ? "this link" : "just image"
  end

  def default_photo(profile, size, html={}, link = true)
    default_size = profile.user && profile.user.rep? ? "190x119" : size
    link ? "default link #{default_size}" : "default #{default_size}"
  end
end