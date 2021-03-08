# frozen_string_literal: true

module Comfy::Blog::PostsHelper
  def post_published_time(post = nil, format: :short)
    post ||= @cms_post
    post.published_at.to_formatted_s(format)
  end

  def post_link(post)
    link_to post.title, comfy_blog_post_path(
      @cms_site.path,
      post.year,
      post.month,
      post.slug
    )
  end
end
