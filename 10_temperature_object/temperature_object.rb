class Temperature
  def initialize(options = {})
    @options = options
  end

  def in_fahrenheit
    @options.keys.first == :f ? @options[:f] : @options.values.first.to_f * 9.0 / 5.0 +32
  end

  def in_celsius
  	@options.keys.first == :c ? @options[:c] : (@options.values.first - 32) * 5 / 9
  end

  def self.from_celsius(temp)
  	self.new(c: temp)
  end

  def self.from_fahrenheit(temp)
  	self.new(f: temp)
  end
end

class Celsius < Temperature  
  def initialize(num)
    super(c: num)
  end
end

class Fahrenheit < Temperature 
  def initialize(num)
    super(f: num)
  end
end