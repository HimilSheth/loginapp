
#
# [module description]
#
# @author [himil]
#
module PostsHelper

    #
    # [save_post_id description]
    # @param post [type] [description]
    #
    # @return [type] [description]
  def save_post_id(post)
    session[:post_id] = post.id
  end
end
