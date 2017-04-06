require "spec_helper"
require "list"

describe List do
	its(:title) {should_be 'Test 1'}
	its(:todos