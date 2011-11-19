require "singleton"

module Null

  def self.included(base)
    base.send(:include, Singleton)
  end

  def to_a; []; end
  def to_s; ""; end
  def to_f; 0.0; end
  def to_i; 0; end
  def nil?; true; end

  def method_missing(*args, &block)
    self
  end

  class Object
    include Null
  end

end
