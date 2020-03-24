=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsClientReferenceInformationPartner
    # Value that links the previous transaction to the current follow-on request. This value is assigned by the client software that is installed on the POS terminal, which makes it available to the terminal’s software and to CyberSource. Therefore, you can use this value to reconcile transactions between CyberSource and the terminal’s software.  CyberSource does not forward this value to the processor. Instead, the value is forwarded to the CyberSource reporting functionality.  This field is supported only on American Express Direct, FDC Nashville Global, and SIX. 
    attr_accessor :original_transaction_id

    # Identifier for the developer that helped integrate a partner solution to CyberSource.  Send this value in all requests that are sent through the partner solutions built by that developer. CyberSource assigns the ID to the developer.  **Note** When you see a developer ID of 999 in reports, the developer ID that was submitted is incorrect. 
    attr_accessor :developer_id

    # Identifier for the partner that is integrated to CyberSource.  Send this value in all requests that are sent through the partner solution. CyberSource assigns the ID to the partner.  **Note** When you see a partner ID of 999 in reports, the partner ID that was submitted is incorrect. 
    attr_accessor :solution_id

    # Value that identifies the application vendor and application version for a third party gateway. CyberSource provides you with this value during testing and validation. This field is supported only on CyberSource through VisaNet. 
    attr_accessor :third_party_certification_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'original_transaction_id' => :'originalTransactionId',
        :'developer_id' => :'developerId',
        :'solution_id' => :'solutionId',
        :'third_party_certification_number' => :'thirdPartyCertificationNumber'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'original_transaction_id' => :'String',
        :'developer_id' => :'String',
        :'solution_id' => :'String',
        :'third_party_certification_number' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'originalTransactionId')
        self.original_transaction_id = attributes[:'originalTransactionId']
      end

      if attributes.has_key?(:'developerId')
        self.developer_id = attributes[:'developerId']
      end

      if attributes.has_key?(:'solutionId')
        self.solution_id = attributes[:'solutionId']
      end

      if attributes.has_key?(:'thirdPartyCertificationNumber')
        self.third_party_certification_number = attributes[:'thirdPartyCertificationNumber']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@original_transaction_id.nil? && @original_transaction_id.to_s.length > 32
        invalid_properties.push('invalid value for "original_transaction_id", the character length must be smaller than or equal to 32.')
      end

      if !@developer_id.nil? && @developer_id.to_s.length > 8
        invalid_properties.push('invalid value for "developer_id", the character length must be smaller than or equal to 8.')
      end

      if !@solution_id.nil? && @solution_id.to_s.length > 8
        invalid_properties.push('invalid value for "solution_id", the character length must be smaller than or equal to 8.')
      end

      if !@third_party_certification_number.nil? && @third_party_certification_number.to_s.length > 12
        invalid_properties.push('invalid value for "third_party_certification_number", the character length must be smaller than or equal to 12.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@original_transaction_id.nil? && @original_transaction_id.to_s.length > 32
      return false if !@developer_id.nil? && @developer_id.to_s.length > 8
      return false if !@solution_id.nil? && @solution_id.to_s.length > 8
      return false if !@third_party_certification_number.nil? && @third_party_certification_number.to_s.length > 12
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] original_transaction_id Value to be assigned
    def original_transaction_id=(original_transaction_id)
      if !original_transaction_id.nil? && original_transaction_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "original_transaction_id", the character length must be smaller than or equal to 32.'
      end

      @original_transaction_id = original_transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] developer_id Value to be assigned
    def developer_id=(developer_id)
      if !developer_id.nil? && developer_id.to_s.length > 8
        fail ArgumentError, 'invalid value for "developer_id", the character length must be smaller than or equal to 8.'
      end

      @developer_id = developer_id
    end

    # Custom attribute writer method with validation
    # @param [Object] solution_id Value to be assigned
    def solution_id=(solution_id)
      if !solution_id.nil? && solution_id.to_s.length > 8
        fail ArgumentError, 'invalid value for "solution_id", the character length must be smaller than or equal to 8.'
      end

      @solution_id = solution_id
    end

    # Custom attribute writer method with validation
    # @param [Object] third_party_certification_number Value to be assigned
    def third_party_certification_number=(third_party_certification_number)
      if !third_party_certification_number.nil? && third_party_certification_number.to_s.length > 12
        fail ArgumentError, 'invalid value for "third_party_certification_number", the character length must be smaller than or equal to 12.'
      end

      @third_party_certification_number = third_party_certification_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          original_transaction_id == o.original_transaction_id &&
          developer_id == o.developer_id &&
          solution_id == o.solution_id &&
          third_party_certification_number == o.third_party_certification_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [original_transaction_id, developer_id, solution_id, third_party_certification_number].hash
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
