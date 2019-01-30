# frozen_string_literal

module TooStable
  def percent_yield(percent, value)
    rand(100) >= (percent - 1) ? yield(value) : value
  end
  
  def almost_always(value, &block)
    percent_yield(99, value, &block)
  end

  def usually(value, &block)
    percent_yield(80, value, &block)
  end

  def frequently(value, &block)
    percent_yield(70, value, &block)
  end

  def often(value, &block)
    percent_yield(60, value, &block)
  end

  def fifty_fifty(value, &block)
    percent_yield(50, value, &block)
  end

  def sometimes(value, &block)
    percent_yield(40, value, &block)
  end

  def ocassionally(value, &block)
    percent_yield(30, value, &block)
  end

  def rarely(value, &block)
    percent_yield(20, value, &block)
  end

  def seldom(value, &block)
    percent_yield(10, value, &block)
  end

  def almost_never(value, &block)
    percent_yield(1, value, &block)
  end

  def self.version
    "#{rand 10}.#{rand 10}.#{rand 10}"
  end
end
