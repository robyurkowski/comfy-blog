# frozen_string_literal: true

module Comfy::Blog::PostsHelper
  def post_published_time(args = { format: :mdy })
    post, format = args.symbolize_keys
      .values_at(:post, :format)
    post ||= @cms_post
    l post.published_at, format: format.to_sym
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
