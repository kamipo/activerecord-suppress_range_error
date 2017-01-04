require "active_record/type"

module ActiveRecord
  module SuppressRangeError
    private

    def ensure_in_range(value)
    end
  end

  module Type
    class Integer
      prepend SuppressRangeError
    end
  end
end
