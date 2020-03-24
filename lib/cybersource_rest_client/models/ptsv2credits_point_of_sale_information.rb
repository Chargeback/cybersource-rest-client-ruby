=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2creditsPointOfSaleInformation
    attr_accessor :emv

    # Version of the software installed on the POS terminal. This value is provided by the client software that is installed on the POS terminal.  CyberSource does not forward this value to the processor. Instead, the value is forwarded to the CyberSource reporting functionality.  This field is supported only on American Express Direct, FDC Nashville Global, and SIX. 
    attr_accessor :partner_sdk_version

    # When connectivity is unavailable, the client software that is installed on the POS terminal can store a transaction in its memory and send it for authorization when connectivity is restored. This value is provided by the client software that is installed on the POS terminal.  CyberSource does not forward this value to the processor. Instead, the value is forwarded to the CyberSource reporting functionality.  Possible values: - Y: Transaction was stored and then forwarded. - N (default): Transaction was not stored and then forwarded.  This field is supported only on American Express Direct, FDC Nashville Global, and SIX. 
    attr_accessor :store_and_forward_indicator

    attr_accessor :cardholder_verification_method

    attr_accessor :terminal_input_capability

    # Terminal serial number assigned by the hardware manufacturer. This value is provided by the client software that is installed on the POS terminal.  CyberSource does not forward this value to the processor. Instead, the value is forwarded to the CyberSource reporting functionality.  This field is supported only on American Express Direct, FDC Nashville Global, and SIX.  For details, see the `terminal_serial_number` field description in [Card-Present Processing Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/Retail_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm) 
    attr_accessor :terminal_serial_number

    # Indicates whether the terminal can capture the card.  Possible values: - 1: Terminal can capture card. - 0: Terminal cannot capture card.  This field is supported only on American Express Direct. 
    attr_accessor :terminal_card_capture_capability

    # Indicates whether the terminal can print or display messages.  Possible values: - 1: Neither - 2: Print only - 3: Display only - 4: Print and display  This field is supported only on American Express Direct. 
    attr_accessor :terminal_output_capability

    # Maximum PIN length that the terminal can capture.  Possible values: -  0: No PIN capture capability -  1: PIN capture capability unknown -  4: Four characters -  5: Five characters -  6: Six characters -  7: Seven characters -  8: Eight characters -  9: Nine characters - 10: Ten characters - 11: Eleven characters - 12: Twelve characters  This field is supported only on American Express Direct and SIX. 
    attr_accessor :terminal_pin_capability

    # Value created by the client software that uniquely identifies the POS device. This value is provided by the client software that is installed on the POS terminal.  CyberSource does not forward this value to the processor. Instead, the value is forwarded to the CyberSource reporting functionality.  This field is supported only on American Express Direct, FDC Nashville Global, and SIX. 
    attr_accessor :device_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'emv' => :'emv',
        :'partner_sdk_version' => :'partnerSdkVersion',
        :'store_and_forward_indicator' => :'storeAndForwardIndicator',
        :'cardholder_verification_method' => :'cardholderVerificationMethod',
        :'terminal_input_capability' => :'terminalInputCapability',
        :'terminal_serial_number' => :'terminalSerialNumber',
        :'terminal_card_capture_capability' => :'terminalCardCaptureCapability',
        :'terminal_output_capability' => :'terminalOutputCapability',
        :'terminal_pin_capability' => :'terminalPinCapability',
        :'device_id' => :'deviceId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'emv' => :'Ptsv2creditsPointOfSaleInformationEmv',
        :'partner_sdk_version' => :'String',
        :'store_and_forward_indicator' => :'String',
        :'cardholder_verification_method' => :'Array<String>',
        :'terminal_input_capability' => :'Array<String>',
        :'terminal_serial_number' => :'String',
        :'terminal_card_capture_capability' => :'String',
        :'terminal_output_capability' => :'String',
        :'terminal_pin_capability' => :'Integer',
        :'device_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'emv')
        self.emv = attributes[:'emv']
      end

      if attributes.has_key?(:'partnerSdkVersion')
        self.partner_sdk_version = attributes[:'partnerSdkVersion']
      end

      if attributes.has_key?(:'storeAndForwardIndicator')
        self.store_and_forward_indicator = attributes[:'storeAndForwardIndicator']
      end

      if attributes.has_key?(:'cardholderVerificationMethod')
        if (value = attributes[:'cardholderVerificationMethod']).is_a?(Array)
          self.cardholder_verification_method = value
        end
      end

      if attributes.has_key?(:'terminalInputCapability')
        if (value = attributes[:'terminalInputCapability']).is_a?(Array)
          self.terminal_input_capability = value
        end
      end

      if attributes.has_key?(:'terminalSerialNumber')
        self.terminal_serial_number = attributes[:'terminalSerialNumber']
      end

      if attributes.has_key?(:'terminalCardCaptureCapability')
        self.terminal_card_capture_capability = attributes[:'terminalCardCaptureCapability']
      end

      if attributes.has_key?(:'terminalOutputCapability')
        self.terminal_output_capability = attributes[:'terminalOutputCapability']
      end

      if attributes.has_key?(:'terminalPinCapability')
        self.terminal_pin_capability = attributes[:'terminalPinCapability']
      end

      if attributes.has_key?(:'deviceId')
        self.device_id = attributes[:'deviceId']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@partner_sdk_version.nil? && @partner_sdk_version.to_s.length > 32
        invalid_properties.push('invalid value for "partner_sdk_version", the character length must be smaller than or equal to 32.')
      end

      if !@store_and_forward_indicator.nil? && @store_and_forward_indicator.to_s.length > 1
        invalid_properties.push('invalid value for "store_and_forward_indicator", the character length must be smaller than or equal to 1.')
      end

      if !@terminal_serial_number.nil? && @terminal_serial_number.to_s.length > 32
        invalid_properties.push('invalid value for "terminal_serial_number", the character length must be smaller than or equal to 32.')
      end

      if !@terminal_card_capture_capability.nil? && @terminal_card_capture_capability.to_s.length > 1
        invalid_properties.push('invalid value for "terminal_card_capture_capability", the character length must be smaller than or equal to 1.')
      end

      if !@terminal_output_capability.nil? && @terminal_output_capability.to_s.length > 1
        invalid_properties.push('invalid value for "terminal_output_capability", the character length must be smaller than or equal to 1.')
      end

      if !@device_id.nil? && @device_id.to_s.length > 32
        invalid_properties.push('invalid value for "device_id", the character length must be smaller than or equal to 32.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@partner_sdk_version.nil? && @partner_sdk_version.to_s.length > 32
      return false if !@store_and_forward_indicator.nil? && @store_and_forward_indicator.to_s.length > 1
      return false if !@terminal_serial_number.nil? && @terminal_serial_number.to_s.length > 32
      return false if !@terminal_card_capture_capability.nil? && @terminal_card_capture_capability.to_s.length > 1
      return false if !@terminal_output_capability.nil? && @terminal_output_capability.to_s.length > 1
      return false if !@device_id.nil? && @device_id.to_s.length > 32
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] partner_sdk_version Value to be assigned
    def partner_sdk_version=(partner_sdk_version)
      if !partner_sdk_version.nil? && partner_sdk_version.to_s.length > 32
        fail ArgumentError, 'invalid value for "partner_sdk_version", the character length must be smaller than or equal to 32.'
      end

      @partner_sdk_version = partner_sdk_version
    end

    # Custom attribute writer method with validation
    # @param [Object] store_and_forward_indicator Value to be assigned
    def store_and_forward_indicator=(store_and_forward_indicator)
      if !store_and_forward_indicator.nil? && store_and_forward_indicator.to_s.length > 1
        fail ArgumentError, 'invalid value for "store_and_forward_indicator", the character length must be smaller than or equal to 1.'
      end

      @store_and_forward_indicator = store_and_forward_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] terminal_serial_number Value to be assigned
    def terminal_serial_number=(terminal_serial_number)
      if !terminal_serial_number.nil? && terminal_serial_number.to_s.length > 32
        fail ArgumentError, 'invalid value for "terminal_serial_number", the character length must be smaller than or equal to 32.'
      end

      @terminal_serial_number = terminal_serial_number
    end

    # Custom attribute writer method with validation
    # @param [Object] terminal_card_capture_capability Value to be assigned
    def terminal_card_capture_capability=(terminal_card_capture_capability)
      if !terminal_card_capture_capability.nil? && terminal_card_capture_capability.to_s.length > 1
        fail ArgumentError, 'invalid value for "terminal_card_capture_capability", the character length must be smaller than or equal to 1.'
      end

      @terminal_card_capture_capability = terminal_card_capture_capability
    end

    # Custom attribute writer method with validation
    # @param [Object] terminal_output_capability Value to be assigned
    def terminal_output_capability=(terminal_output_capability)
      if !terminal_output_capability.nil? && terminal_output_capability.to_s.length > 1
        fail ArgumentError, 'invalid value for "terminal_output_capability", the character length must be smaller than or equal to 1.'
      end

      @terminal_output_capability = terminal_output_capability
    end

    # Custom attribute writer method with validation
    # @param [Object] device_id Value to be assigned
    def device_id=(device_id)
      if !device_id.nil? && device_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "device_id", the character length must be smaller than or equal to 32.'
      end

      @device_id = device_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          emv == o.emv &&
          partner_sdk_version == o.partner_sdk_version &&
          store_and_forward_indicator == o.store_and_forward_indicator &&
          cardholder_verification_method == o.cardholder_verification_method &&
          terminal_input_capability == o.terminal_input_capability &&
          terminal_serial_number == o.terminal_serial_number &&
          terminal_card_capture_capability == o.terminal_card_capture_capability &&
          terminal_output_capability == o.terminal_output_capability &&
          terminal_pin_capability == o.terminal_pin_capability &&
          device_id == o.device_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [emv, partner_sdk_version, store_and_forward_indicator, cardholder_verification_method, terminal_input_capability, terminal_serial_number, terminal_card_capture_capability, terminal_output_capability, terminal_pin_capability, device_id].hash
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