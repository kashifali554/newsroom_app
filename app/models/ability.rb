class Ability
  include CanCan::Ability

  def initialize(user)

    if user && user.role == 2
      can :manage, :all
    end

    if user && user.role == 1
      can :read, :all
      can :update, :destroy, Article do |article|
        article.user == user
      end
      can :create
      alias_action :create, :read, :update, :destroy, :to => :crud
      can :crud, Article do |article|
        article.user == user
      end
    end

    if user && user.role == nil
      can :read, :all
      can :create, Comment do |comment|
        comment.user = user
      end
    end

  end # end of initializer method
end #end of class

