class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? :user # :user to setup stuff
      can :manage, :all
    end
    # if user.has_role? :user
    #   can [:read, :update], User do |account|
    #     account.email == user.email
    #   end
    # end
  end
end