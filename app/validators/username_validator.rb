class UsernameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    is_correct_format = value =~ /^[a-zA-Z0-9_]*[a-zA-Z][a-zA-Z0-9_]*$/
    is_valid_length = !value.nil? && value.length >= 2
    record.errors[attribute] << (options[:message] || "must be at least 5 characters and contain only letters, numbers and underscores with at least one letter") unless
      is_correct_format && is_valid_length
  end
end
