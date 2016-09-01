module ActiveRecord
  # monkey-patch ActiveRecord::Base, add #destroyable? and #destroyable
  class Base
    before_destroy :check_destroyable

    # override this method to return false when this object should not be destroyed in child classes
    def destroyable?
      true
    end

    def check_destroyable
      !!destroyable? # ensure this returns either true or false, only false can break the callback chain
    end
  end
end
