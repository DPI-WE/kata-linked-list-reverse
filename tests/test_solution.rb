require "minitest/autorun"
require_relative "../solution"

class TestSolution < Minitest::Test
  def test_reverse_1_2_3_nil_to_3_2_1_nil
    list = ListNode.to_list([1, 2, 3])
    reversed_list_head = ListNode.reverse(list)
    assert_equal([3, 2, 1], ListNode.to_array(reversed_list_head))
  end

  def test_reverse_1_2_3_4_5_6_nil_to_6_5_4_3_2_1_nil
    list = ListNode.to_list([1, 2, 3, 4, 5, 6])
    reversed_list_head = ListNode.reverse(list)
    assert_equal([6, 5, 4, 3, 2, 1], ListNode.to_array(reversed_list_head))
  end

  def test_reverse_empty_list
    reversed_list_head = ListNode.reverse(nil)
    assert_nil reversed_list_head
  end

  def test_reverse_single_node
    list = ListNode.to_list([1])
    reversed_list_head = ListNode.reverse(list)
    assert_equal([1], ListNode.to_array(reversed_list_head))
  end

  # TODO: test to_array and to_list methods

end
