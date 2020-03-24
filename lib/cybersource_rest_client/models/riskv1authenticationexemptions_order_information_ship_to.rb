=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Riskv1authenticationexemptionsOrderInformationShipTo
    # First line of the shipping address.
    attr_accessor :address1

    # Second line of the shipping address.
    attr_accessor :address2

    # State or province of the shipping address. Use the State, Province, and Territory Codes for the United States and Canada. 
    attr_accessor :administrative_area

    # Country of the shipping address. Use the two-character ISO Standard Country Codes.
    attr_accessor :country

    # City of the shipping address.
    attr_accessor :locality

    # First name of the recipient.  **Processor specific maximum length**  - Litle: 25 - All other processors: 60 
    attr_accessor :first_name

    # Last name of the recipient.  **Processor-specific maximum length**  - Litle: 25 - All other processors: 60 
    attr_accessor :last_name

    # Phone number associated with the shipping address.
    attr_accessor :phone_number

    # Postal code for the shipping address. The postal code must consist of 5 to 9 digits.  When the billing country is the U.S., the 9-digit postal code must follow this format: [5 digits][dash][4 digits]  Example 12345-6789  When the billing country is Canada, the 6-digit postal code must follow this format: [alpha][numeric][alpha][space][numeric][alpha][numeric]  Example A1B 2C3  **American Express Direct**\\ Before sending the postal code to the processor, CyberSource removes all nonalphanumeric characters and, if the remaining value is longer than nine characters, truncates the value starting from the right side. 
    attr_accessor :postal_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'administrative_area' => :'administrativeArea',
        :'country' => :'country',
        :'locality' => :'locality',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'phone_number' => :'phoneNumber',
        :'postal_code' => :'postalCode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address1' => :'String',
        :'address2' => :'String',
        :'administrative_area' => :'String',
        :'country' => :'String',
        :'locality' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'phone_number' => :'String',
        :'postal_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.has_key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.has_key?(:'administrativeArea')
        self.administrative_area = attributes[:'administrativeArea']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'locality')
        self.locality = attributes[:'locality']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'postalCode')
        self.postal_code = attributes[:'postalCode']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@address1.nil? && @address1.to_s.length > 60
        invalid_properties.push('invalid value for "address1", the character length must be smaller than or equal to 60.')
      end

      if !@address2.nil? && @address2.to_s.length > 60
        invalid_properties.push('invalid value for "address2", the character length must be smaller than or equal to 60.')
      end

      if !@administrative_area.nil? && @administrative_area.to_s.length > 2
        invalid_properties.push('invalid value for "administrative_area", the character length must be smaller than or equal to 2.')
      end

      if !@country.nil? && @country.to_s.length > 2
        invalid_properties.push('invalid value for "country", the character length must be smaller than or equal to 2.')
      end

      if !@locality.nil? && @locality.to_s.length > 50
        invalid_properties.push('invalid value for "locality", the character length must be smaller than or equal to 50.')
      end

      if !@first_name.nil? && @first_name.to_s.length > 60
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 60.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 60
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 60.')
      end

      if !@phone_number.nil? && @phone_number.to_s.length > 15
        invalid_properties.push('invalid value for "phone_number", the character length must be smaller than or equal to 15.')
      end

      if !@postal_code.nil? && @postal_code.to_s.length > 10
        invalid_properties.push('invalid value for "postal_code", the character length must be smaller than or equal to 10.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@address1.nil? && @address1.to_s.length > 60
      return false if !@address2.nil? && @address2.to_s.length > 60
      return false if !@administrative_area.nil? && @administrative_area.to_s.length > 2
      return false if !@country.nil? && @country.to_s.length > 2
      return false if !@locality.nil? && @locality.to_s.length > 50
      return false if !@first_name.nil? && @first_name.to_s.length > 60
      return false if !@last_name.nil? && @last_name.to_s.length > 60
      return false if !@phone_number.nil? && @phone_number.to_s.length > 15
      return false if !@postal_code.nil? && @postal_code.to_s.length > 10
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] address1 Value to be assigned
    def address1=(address1)
      if !address1.nil? && address1.to_s.length > 60
        fail ArgumentError, 'invalid value for "address1", the character length must be smaller than or equal to 60.'
      end

      @address1 = address1
    end

    # Custom attribute writer method with validation
    # @param [Object] address2 Value to be assigned
    def address2=(address2)
      if !address2.nil? && address2.to_s.length > 60
        fail ArgumentError, 'invalid value for "address2", the character length must be smaller than or equal to 60.'
      end

      @address2 = address2
    end

    # Custom attribute writer method with validation
    # @param [Object] administrative_area Value to be assigned
    def administrative_area=(administrative_area)
      if !administrative_area.nil? && administrative_area.to_s.length > 2
        fail ArgumentError, 'invalid value for "administrative_area", the character length must be smaller than or equal to 2.'
      end

      @administrative_area = administrative_area
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if !country.nil? && country.to_s.length > 2
        fail ArgumentError, 'invalid value for "country", the character length must be smaller than or equal to 2.'
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] locality Value to be assigned
    def locality=(locality)
      if !locality.nil? && locality.to_s.length > 50
        fail ArgumentError, 'invalid value for "locality", the character length must be smaller than or equal to 50.'
      end

      @locality = locality
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && first_name.to_s.length > 60
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 60.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && last_name.to_s.length > 60
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 60.'
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if !phone_number.nil? && phone_number.to_s.length > 15
        fail ArgumentError, 'invalid value for "phone_number", the character length must be smaller than or equal to 15.'
      end

      @phone_number = phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      if !postal_code.nil? && postal_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "postal_code", the character length must be smaller than or equal to 10.'
      end

      @postal_code = postal_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          administrative_area == o.administrative_area &&
          country == o.country &&
          locality == o.locality &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          phone_number == o.phone_number &&
          postal_code == o.postal_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [address1, address2, administrative_area, country, locality, first_name, last_name, phone_number, postal_code].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
