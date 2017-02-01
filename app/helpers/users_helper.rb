module UsersHelper
  def has_posts(user)
    user && (user.posts.count > 0)
  end

  def has_comments(user)
    user && (user.comments.count > 0)
  end

  def has_favorites(user)
    user && (user.favorites.count > 0)
  end

  def favorites_gravatar(id)
   post = Post.where(id: id)
   poster_id = post.first.user_id
   @gravatar_user = User.where(id: poster_id)
   gravatar_email = @gravatar_user.first.email
   gravatar_id = Digest::MD5::hexdigest(gravatar_email).downcase
   "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{40}"
  end
end
