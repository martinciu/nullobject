require 'spec_helper'

describe "Null::Object" do

  describe "instance methods" do
    before do
      @it = Null::Object.instance
    end

    it "#to_s return empty string" do
      @it.to_s.must_equal ""
    end

    it "#to_s(:param) return empty string" do
      @it.to_s(:param).must_equal ""
    end

    it "#to_a return empty array" do
      @it.to_a.must_equal []
    end

    it "#to_ary return empty array" do
      @it.to_ary.must_equal []
    end

    it "#to_f return 0.0" do
      @it.to_f.must_equal 0.0
    end

    it "#to_i return 0" do
      @it.to_i.must_equal 0
    end

    it "#nil? return true" do
      @it.nil?.must_equal true
    end

    it "#inspect is meaningful" do
      @it.inspect.wont_be_empty
    end

    it "responds to everything" do
      @it.respond_to?(:everything).must_equal true
    end

    it "responds with self" do
      @it.foo.must_equal @it
    end
  end

  describe "custom null" do
    class FooNullObject
      include Null

      def to_bar
        "nothing here"
      end
    end

    before do
      @it = FooNullObject.instance
    end

    it "#to_s return empty string" do
      @it.to_s.must_equal ""
    end

    it "#to_s(:param) return empty string" do
      @it.to_s(:param).must_equal ""
    end

    it "#to_a return empty array" do
      @it.to_a.must_equal []
    end

    it "#to_f return 0.0" do
      @it.to_f.must_equal 0.0
    end

    it "#to_i return 0" do
      @it.to_i.must_equal 0
    end

    it "#nil? return true" do
      @it.nil?.must_equal true
    end

    it "#to_bar returns 'nothing_here'" do
      @it.to_bar.must_equal "nothing here"
    end

  end

end

