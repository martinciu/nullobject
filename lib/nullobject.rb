require "singleton"

module Null

  def self.included(base)
    base.send(:include, Singleton)
    base.extend Null::ClassMethods
  end

  def to_a; []; end
  alias :to_ary :to_a
  def to_s; ""; end
  alias :to_str :to_s
  def to_f; 0.0; end
  def to_i; 0; end
  def nil?; true; end
  def +(other); other; end
  def -(other); coerced(other) - other; end
  
  def coerce(other)
    [other, coerced(other)]
  end

  def method_missing(*args, &block)
    self
  end

  protected
    def coerced(other)
      send({
        Integer => :to_i,
        Fixnum  => :to_i,
        String  => :to_s,
        Float   => :to_f,
        Array   => :to_a
      }[other.class])
    end

  module ClassMethods
    def maybe(value)
      value.nil? ? instance : value
    end
  end

  class Object
    include Null
  end

end
