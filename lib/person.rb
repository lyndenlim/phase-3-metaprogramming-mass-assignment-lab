class Person
  def initialize(attributes)
    attributes.each { |attribute, value|
      self.class.attr_accessor(attribute)
      self.send("#{attribute}=", value)
    }
  end
end
