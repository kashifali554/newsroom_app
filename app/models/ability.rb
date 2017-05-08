class Ability
  include CanCan::Ability

  def initialize(user)

    if user && user.role == 2
      can :manage, :all

    elsif user && user.role == 1

      can :new, Article do |article|
        article.user == user
      end

      can :create, Article do |article|
          article.user == user
      end

      can :edit, Article do |article|
          article.user == user
      end

      can :update, Article do |article|
          article.user == user
      end

      can :Destroy, Article do |article|
          article.user == user
      end


    else user && user.role == nil
      can :read, :all

      can :create, Comment do |comment|
        comment.user = user
      end

    end #end of if statment
  end # end of initializer method
end #end of class

