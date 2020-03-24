=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Riskv1authenticationexemptionsPaymentInformationFluidData
    # Represents the encrypted payment data BLOB. The entry for this field is dependent on the payment solution a merchant uses.  For details, see [Creating an Online Authorization](https://developer.cybersource.com/api/developer-guides/dita-payments/CreatingOnlineAuth.html) for the specific payment- solution entry. 
    attr_accessor :value

    # The encoded or encrypted value that a payment solution returns for an authorization request. For details about the valid values for a key, see [Creating an Online Authorization](https://developer.cybersource.com/api/developer-guides/dita-payments/CreatingOnlineAuth.html) 
    attr_accessor :key_serial_number

    # The identifier for a payment solution, which is sending the encrypted payment data to CyberSource for decryption. Valid values: - Samsung Pay: `RklEPUNPTU1PTi5TQU1TVU5HLklOQVBQLlBBWU1FTlQ=` **NOTE**: For other payment solutions, the value may be specific to the customer's mobile device. For example, the descriptor for a Bluefin payment encryption would be a device-generated descriptor.  For details about the list of payment solution identifiers, see [Creating an Online Authorization](https://developer.cybersource.com/api/developer-guides/dita-payments/CreatingOnlineAuth.html).  For details about the encrypted payment data, see the `encrypted_payment_descriptor` field description in the [Card-Present Processing Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/Retail_SCMP_API/html/). 
    attr_accessor :descriptor

    # Encoding method used to encrypt the payment data.  Valid value: Base64 
    attr_accessor :encoding

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'value' => :'value',
        :'key_serial_number' => :'keySerialNumber',
        :'descriptor' => :'descriptor',
        :'encoding' => :'encoding'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'value' => :'String',
        :'key_serial_number' => :'String',
        :'descriptor' => :'String',
        :'encoding' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'keySerialNumber')
        self.key_serial_number = attributes[:'keySerialNumber']
      end

      if attributes.has_key?(:'descriptor')
        self.descriptor = attributes[:'descriptor']
      end

      if attributes.has_key?(:'encoding')
        self.encoding = attributes[:'encoding']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @value.nil?
        invalid_properties.push('invalid value for "value", value cannot be nil.')
      end

      if @value.to_s.length > 3072
        invalid_properties.push('invalid value for "value", the character length must be smaller than or equal to 3072.')
      end

      if !@descriptor.nil? && @descriptor.to_s.length > 128
        invalid_properties.push('invalid value for "descriptor", the character length must be smaller than or equal to 128.')
      end

      if !@encoding.nil? && @encoding.to_s.length > 6
        invalid_properties.push('invalid value for "encoding", the character length must be smaller than or equal to 6.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @value.nil?
      return false if @value.to_s.length > 3072
      return false if !@descriptor.nil? && @descriptor.to_s.length > 128
      return false if !@encoding.nil? && @encoding.to_s.length > 6
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] value Value to be assigned
    def value=(value)
      if value.nil?
        fail ArgumentError, 'value cannot be nil'
      end

      if value.to_s.length > 3072
        fail ArgumentError, 'invalid value for "value", the character length must be smaller than or equal to 3072.'
      end

      @value = value
    end

    # Custom attribute writer method with validation
    # @param [Object] descriptor Value to be assigned
    def descriptor=(descriptor)
      if !descriptor.nil? && descriptor.to_s.length > 128
        fail ArgumentError, 'invalid value for "descriptor", the character length must be smaller than or equal to 128.'
      end

      @descriptor = descriptor
    end

    # Custom attribute writer method with validation
    # @param [Object] encoding Value to be assigned
    def encoding=(encoding)
      if !encoding.nil? && encoding.to_s.length > 6
        fail ArgumentError, 'invalid value for "encoding", the character length must be smaller than or equal to 6.'
      end

      @encoding = encoding
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          value == o.value &&
          key_serial_number == o.key_serial_number &&
          descriptor == o.descriptor &&
          encoding == o.encoding
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [value, key_serial_number, descriptor, encoding].hash
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
