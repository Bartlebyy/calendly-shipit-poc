module Shipit
  class Hook < ActiveRecord::Base
    CONTENT_TYPES = {
      'json' => 'application/json',
      'form' => 'application/x-www-form-urlencoded',
    }
  end
end

