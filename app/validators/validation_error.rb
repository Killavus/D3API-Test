require 'dependor/shorty'

class ValidationError < StandardError
  takes :errors
end
