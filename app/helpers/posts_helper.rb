module PostsHelper
  def save_post(post)
    session[:post_id] = post.id
  end
end
