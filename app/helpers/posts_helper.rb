module PostsHelper
  def save_post_id(post)
    session[:post_id] = post.id
  end
end
