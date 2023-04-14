class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, :all if user.role == 'admin'

    can :manage, Post, author_id: user.id
    can :manage, Comment, author_id: user.id
  end
end
