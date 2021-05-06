defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the number of odd items on list" do
      list = [1,2,3,4,5, "23", :banana]
      response = ListFilter.call(list)
      expected_response = 3
      assert response == expected_response
    end
  end
end
