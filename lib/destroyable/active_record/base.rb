module ActiveRecord
  # monkey-patch ActiveRecord::Base, add #destroyable? and #destroyable
  class Base
    before_destroy :raise_unless_destroyable

    # override this method to return false when this object should not be destroyed in child classes
    def destroyable?
      true
    end

    def raise_unless_destroyable
      raise ActiveRecord::CannotBeDestroyedNow unless destroyable?
    end
  end
end
