class UserPolicy < ApplicationPolicy
    def new?
        !user || User.all.empty?
    end
    def create?
        !user || User.all.empty?
    end
end