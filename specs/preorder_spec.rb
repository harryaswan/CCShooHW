require('minitest/autorun')
require('minitest/rg')
require_relative('../models/preorder')
class TestPreorder < Minitest::Test

    def setup
        options = {'name'=>'Harry Swan', 'address'=>'37 Castle Terrace, Edinburgh', 'quantity'=>'2', 'size'=>'10'}
        @preorder = Preorder.new(options)
    end

    def test_pre_name
        test_result = @preorder.name
        expected_result = "Harry Swan"
        assert_equal(expected_result,test_result)
    end

    def test_pre_address
        test_result = @preorder.address
        expected_result = "37 Castle Terrace, Edinburgh"
        assert_equal(expected_result,test_result)
    end

    def test_pre_quantity
        test_result = @preorder.quantity
        expected_result = 2
        assert_equal(expected_result,test_result)
    end

    def test_pre_size
        test_result = @preorder.size
        expected_result = 10
        assert_equal(expected_result,test_result)
    end

end
