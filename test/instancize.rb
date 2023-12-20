require 'minitest/autorun'
require_relative '../lib/instancize'

class InstancizeTest < Minitest::Test
  def test_local_variables_become_instance_variables
    foo = 1
    bar = [1, 2, 3]
    Instancize.from_binding(binding)
    assert_equal foo, @foo

    # we want to have the same object, not a duplicate
    assert_same bar, @bar
  end
end
