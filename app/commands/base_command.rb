class BaseCommand
  attr_reader :result

  def self.call(*args)
    new(*args).call
  end

  def call
    @result = nil
    payload
    self
  end

  def success?
    errors.empty?
  end

  def errors
    @errors ||= ActiveModel::Errors.new(self)
  end

  private

  def initialize(*_)

  end

  def payload
    # raise NotImplementedError, 'Implement `initialize` for classes inheriting from BaseCommand'
  end
end