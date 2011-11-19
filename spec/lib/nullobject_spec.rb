require 'spec_helper'

describe "Null::Object" do
  
  describe "instance methods" do
    before do
      @it = Null::Object.instance
    end

    it "#to_s return empty string" do
      @it.to_s.must_equal ""
    end

    it "#to_str return empty string" do
      @it.to_str.must_equal ""
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
  
    describe "#+" do
      it "does not modify integer" do
        (@it + 5).must_equal 5
        (5 + @it).must_equal 5
      end
      
      it "does not modify float" do
        (@it + 5.0).must_equal 5.0
        (5.0 + @it).must_equal 5.0
      end
      
      it "does not modify string" do
        (@it + "foo").must_equal "foo"
        ("foo" + @it).must_equal "foo"
      end

      it "does not modify array" do
        (@it + [1, 3, "foo"]).must_equal [1, 3, "foo"]
        ([1, 3, "foo"] + @it).must_equal [1, 3, "foo"]
      end
    end

    describe "#-" do
      it "does not modify integer" do
        (5 - @it).must_equal 5
      end

      it "acts as empty if other substracts from" do
        (@it - 5).must_equal -5
        (@it - [5]).must_equal []
      end

      it "does not modify array" do
        ([1, 3, "foo"] - @it).must_equal [1, 3, "foo"]
      end
    end

  end

  describe "#maybe" do
    it "returns NullObject if value is nil" do
      Null::Object.maybe(nil).must_be_kind_of Null::Object
    end

    it "returns value if it is not nil" do
      val = "foo"
      Null::Object.maybe("foo").must_equal val
    end
  end

  describe "custom null" do
    class FooNullObject
      include Null
    end

    before do
      @it = FooNullObject.instance
    end

    it "#to_s return empty string" do
      @it.to_s.must_equal ""
    end

    it "#to_str return empty string" do
      @it.to_str.must_equal ""
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
  
    describe "#+" do
      it "does not modify integer" do
        (@it + 5).must_equal 5
        (5 + @it).must_equal 5
      end
      
      it "does not modify float" do
        (@it + 5.0).must_equal 5.0
        (5.0 + @it).must_equal 5.0
      end
      
      it "does not modify string" do
        (@it + "foo").must_equal "foo"
        ("foo" + @it).must_equal "foo"
      end

      it "does not modify array" do
        (@it + [1, 3, "foo"]).must_equal [1, 3, "foo"]
        ([1, 3, "foo"] + @it).must_equal [1, 3, "foo"]
      end
    end

    describe "#-" do
      it "does not modify integer" do
        (5 - @it).must_equal 5
      end

      it "acts as empty if other substracts from" do
        (@it - 5).must_equal -5
        (@it - [5]).must_equal []
      end

      it "does not modify array" do
        ([1, 3, "foo"] - @it).must_equal [1, 3, "foo"]
      end
    end

  end

end

