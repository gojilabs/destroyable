module ActiveRecord
  # Error class that gest thrown during before_destroy whenever ActiveRecord::Base#destroy? returns false
  class CannotBeDestroyedNow < ActiveRecord::RecordInvalid
    def initialize
      super 'before_destroy precondition check failed, see #destroyable?'
    end
  end
end
