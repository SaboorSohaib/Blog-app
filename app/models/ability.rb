class Ability
  include CanCan::Ability
  can :manage, :all if user.role == 'admin'

  can :destroy, Post, author: user
  can :destroy, Comment, author: user
end
