module Validator
  protected
  def put_into_errors(errors, type, message)
    errors[type] ||= []
    errors[type] << message
  end
end
