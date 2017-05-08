class Ability
  include CanCan::Ability

  def initialize(user)

    if user.role == 2
      can :manage, :all

    else user.role == 1

      can :create, Article do |article|
          article.user = user
      end

      can :update, Article do |article|
          article.user = user
      end

      can :Destroy, Article do |article|
          article.user = user
      end

      can :create, Comment do |comment|
        comment.user = user
      end
    end

    else user.role == nil
      can :read, :all

      can :create, Comment do |comment|
        comment.user = user
      end

    end

end

