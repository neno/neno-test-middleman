# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions
require 'contentful_middleman'

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

activate :contentful do |f|
  f.space         = { api: 'ogkuoprm03sm' }
  f.access_token  = 'f858465b24a802271f033bc9fba6d33c8822eb5858474ac97500bec3243143aa'
  f.cda_query     = { limit: 1000 }
  f.content_types = {
    course: 'course',
  }

  # f.dynamic_entries = :auto
  # f.content_types = {course: "course"}
  # f.cda_query = {content_type: "course"}
end

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end
