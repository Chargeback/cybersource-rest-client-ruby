=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsidrefundsMerchantInformation
    attr_accessor :merchant_descriptor

    # Four-digit number that the payment card industry uses to classify merchants into market segments. Visa assigned one or more of these values to your business when you started accepting Visa cards.  If you do not include this field in your request, CyberSource uses the value in your CyberSource account.  For processor-specific information, see the merchant_category_code field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html)  See \"Aggregator Support,\" page 100.  **CyberSource through VisaNet**\\ The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP01 TCR4 - Position: 150-153 - Field: Merchant Category Code 
    attr_accessor :category_code

    # Your government-assigned tax identification number.  For CtV processors, the maximum length is 20.  For other processor-specific information, see the merchant_vat_registration_number field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :vat_registration_number

    # Reference number that facilitates card acceptor/corporation communication and record keeping.  For processor-specific information, see the card_acceptor_ref_number field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :card_acceptor_reference_number

    # Your Cadastro Nacional da Pessoa Jurídica (CNPJ) number.  This field is supported only for BNDES transactions on CyberSource through VisaNet. See BNDES.  The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP07 TCR6 - Position: 40-59 - Field: BNDES Reference Field 1 
    attr_accessor :tax_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'merchant_descriptor' => :'merchantDescriptor',
        :'category_code' => :'categoryCode',
        :'vat_registration_number' => :'vatRegistrationNumber',
        :'card_acceptor_reference_number' => :'cardAcceptorReferenceNumber',
        :'tax_id' => :'taxId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'merchant_descriptor' => :'Ptsv2paymentsMerchantInformationMerchantDescriptor',
        :'category_code' => :'Integer',
        :'vat_registration_number' => :'String',
        :'card_acceptor_reference_number' => :'String',
        :'tax_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'merchantDescriptor')
        self.merchant_descriptor = attributes[:'merchantDescriptor']
      end

      if attributes.has_key?(:'categoryCode')
        self.category_code = attributes[:'categoryCode']
      end

      if attributes.has_key?(:'vatRegistrationNumber')
        self.vat_registration_number = attributes[:'vatRegistrationNumber']
      end

      if attributes.has_key?(:'cardAcceptorReferenceNumber')
        self.card_acceptor_reference_number = attributes[:'cardAcceptorReferenceNumber']
      end

      if attributes.has_key?(:'taxId')
        self.tax_id = attributes[:'taxId']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@category_code.nil? && @category_code > 9999
        invalid_properties.push('invalid value for "category_code", must be smaller than or equal to 9999.')
      end

      if !@vat_registration_number.nil? && @vat_registration_number.to_s.length > 21
        invalid_properties.push('invalid value for "vat_registration_number", the character length must be smaller than or equal to 21.')
      end

      if !@card_acceptor_reference_number.nil? && @card_acceptor_reference_number.to_s.length > 25
        invalid_properties.push('invalid value for "card_acceptor_reference_number", the character length must be smaller than or equal to 25.')
      end

      if !@tax_id.nil? && @tax_id.to_s.length > 15
        invalid_properties.push('invalid value for "tax_id", the character length must be smaller than or equal to 15.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@category_code.nil? && @category_code > 9999
      return false if !@vat_registration_number.nil? && @vat_registration_number.to_s.length > 21
      return false if !@card_acceptor_reference_number.nil? && @card_acceptor_reference_number.to_s.length > 25
      return false if !@tax_id.nil? && @tax_id.to_s.length > 15
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] category_code Value to be assigned
    def category_code=(category_code)
      if !category_code.nil? && category_code > 9999
        fail ArgumentError, 'invalid value for "category_code", must be smaller than or equal to 9999.'
      end

      @category_code = category_code
    end

    # Custom attribute writer method with validation
    # @param [Object] vat_registration_number Value to be assigned
    def vat_registration_number=(vat_registration_number)
      if !vat_registration_number.nil? && vat_registration_number.to_s.length > 21
        fail ArgumentError, 'invalid value for "vat_registration_number", the character length must be smaller than or equal to 21.'
      end

      @vat_registration_number = vat_registration_number
    end

    # Custom attribute writer method with validation
    # @param [Object] card_acceptor_reference_number Value to be assigned
    def card_acceptor_reference_number=(card_acceptor_reference_number)
      if !card_acceptor_reference_number.nil? && card_acceptor_reference_number.to_s.length > 25
        fail ArgumentError, 'invalid value for "card_acceptor_reference_number", the character length must be smaller than or equal to 25.'
      end

      @card_acceptor_reference_number = card_acceptor_reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_id Value to be assigned
    def tax_id=(tax_id)
      if !tax_id.nil? && tax_id.to_s.length > 15
        fail ArgumentError, 'invalid value for "tax_id", the character length must be smaller than or equal to 15.'
      end

      @tax_id = tax_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          merchant_descriptor == o.merchant_descriptor &&
          category_code == o.category_code &&
          vat_registration_number == o.vat_registration_number &&
          card_acceptor_reference_number == o.card_acceptor_reference_number &&
          tax_id == o.tax_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [merchant_descriptor, category_code, vat_registration_number, card_acceptor_reference_number, tax_id].hash
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
