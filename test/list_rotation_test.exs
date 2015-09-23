defmodule ListRotationTest do
  use ExUnit.Case, async: true

  test "rotate left an empty list" do
    assert ListRotation.left_rotate([]) == []
  end

  test "rotate right an empty list" do
    assert ListRotation.right_rotate([]) == []
  end

  test "rotate left 1 time, default" do
  	l = [1, 2, 3, 4, 5]
  	assert ListRotation.left_rotate(l) == [2, 3, 4, 5, 1]
  end

  test "rotate right 1 time, default" do
  	l = [1, 2, 3, 4, 5]
  	assert ListRotation.right_rotate(l) == [5, 1, 2, 3, 4]
  end

  test "rotate left 0 times" do
  	l = [1, 2, 3, 4, 5]
  	assert ListRotation.left_rotate(l, 0) == l
  end

  test "rotate right 0 times" do
  	l = [1, 2, 3, 4, 5]
  	assert ListRotation.right_rotate(l, 0) == l
  end

  test "rotate left 2 times" do
  	l = [1, 2, 3, 4, 5]
  	assert ListRotation.left_rotate(l, 2) == [3, 4, 5, 1, 2]
  end

  test "rotate right 2 times" do
  	l = [1, 2, 3, 4, 5]
  	assert ListRotation.right_rotate(l, 2) == [4, 5, 1, 2, 3]
  end

  test "rotate left -3 times" do
  	l = [1, 2, 3, 4, 5]
  	assert ListRotation.left_rotate(l, -3) == [3, 4, 5, 1, 2]
  end

  test "rotate right -3 times" do
  	l = [1, 2, 3, 4, 5]
  	assert ListRotation.right_rotate(l, -3) == [4, 5, 1, 2, 3]
  end

end
