module ValidatePresenceOf
	
	class Matcher
		def initializer(attribute)
			@attribute = attribute
		end

		def matches?(model)
			@model = model
			@model.valid?
			@model.errors.has_key?(@attribute)
		end
	end

	def validate_presence_of(attribute)
		Matcher.new attribute
	end

	def failure_message
		"#{@model.class} failed to validate :#{@attribute} presence."
	end

	def negative_failure_message
		"#{@model.class} validated: #{@attribute} presence."
	end
end

RSpec.configure do |config|
	config.include ValidatePresenceOf, type: :model
end