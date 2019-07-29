class PostPolicy < ApplicationPolicy
    def create?
        user
    end
    def new?
        create?
    end
    def update?
        record.user_id == user.id
    end
    def destroy?
        update?
    end
    def edit?
        update?
    end
end