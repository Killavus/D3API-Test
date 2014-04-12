class HeroValidator
  include Validator
  Failed = Class.new(::ValidationError)

  def validate(hero)
    errors = {}
    put_into_errors(errors, :name, "name not found") if hero.name.nil? or hero.name.empty?
    put_into_errors(errors, :level, "level not found") if hero.level.nil?

    raise Failed.new(errors) unless errors.empty?
  end
end
