=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseCard
    # Two-digit month in which the credit card expires. Format: `MM` Possible values: `01` through `12`  This field is optional if your CyberSource account is configured for relaxed requirements for address data and expiration date. For more information about relaxed requirements, see the TMS REST API Developer Guide.  Important: It is your responsibility to determine whether a field is required for the transaction you are requesting. 
    attr_accessor :expiration_month

    # Four-digit year in which the credit card expires. Format: `YYYY`. Possible values: `1900` through `2099`.  **FDC Nashville Global and FDMS South** You can send in 2 digits or 4 digits. When you send in 2 digits, they must be the last 2 digits of the year.  This field is optional if your CyberSource account is configured for relaxed requirements for address data and expiration date. See Relaxed Requirements for Address Data and Expiration Date page.  Important: It is your responsibility to determine whether a field is required for the transaction you are requesting.' 
    attr_accessor :expiration_year

    # Type of credit card. Possible values:   * Visa (001)   * Mastercard (002) - Eurocard—European regional brand of Mastercard   * American Express (003)   * Discover (004)   * Diners Club (005)   * Carte Blanche (006)   * JCB (007)   * Optima (008)   * Twinpay Credit (011)   * Twinpay Debit (012)   * Walmart (013)   * EnRoute (014)   * Lowes consumer (015)   * Home Depot consumer (016)   * MBNA (017)   * Dicks Sportswear (018)   * Casual Corner (019)   * Sears (020)   * JAL (021)   * Disney (023)   * Maestro (024) - UK Domestic   * Sams Club consumer (025)   * Sams Club business (026)   * Nicos (027)   * Bill me later (028)   * Bebe (029)   * Restoration Hardware (030)   * Delta (031) — use this value only for Ingenico ePayments. For other processors, use 001 for all Visa card types.   * Solo (032)   * Visa Electron (033)   * Dankort (034)   * Laser (035)   * Carte Bleue (036) — formerly Cartes Bancaires   * Cartes Bancaires (036)   * Carta Si (037)   * pinless debit (038)   * encoded account (039)   * UATP (040)   * Household (041)   * Maestro (042) - International   * GE Money UK (043)   * Korean cards (044)   * Style (045)   * JCrew (046)   * PayEase China processing eWallet (047)   * PayEase China processing bank transfer (048)   * Meijer Private Label (049)   * Hipercard (050) — supported only by the Comercio Latino processor.   * Aura (051) — supported only by the Comercio Latino processor.   * Redecard (052)   * ORICO (053)   * Elo (054) — supported only by the Comercio Latino processor.   * Capital One Private Label (055)   * Synchrony Private Label (056)   * Costco Private Label (057)   * mada (060)   * China Union Pay (062)   * Falabella private label (063) 
    attr_accessor :type

    # Number of times a Maestro (UK Domestic) card has been issued to the account holder.
    attr_accessor :issue_number

    # Month of the start of the Maestro (UK Domestic) card validity period.  Format: `MM`. Possible values: `01` through `12`. 
    attr_accessor :start_month

    # Year of the start of the Maestro (UK Domestic) card validity period.  Format: `YYYY`. Possible values: `1900` through `2099`. 
    attr_accessor :start_year

    # Card Use As Field. Supported value of `pinless debit` only. Only for use with Pinless Debit tokens.
    attr_accessor :use_as

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'expiration_month' => :'expirationMonth',
        :'expiration_year' => :'expirationYear',
        :'type' => :'type',
        :'issue_number' => :'issueNumber',
        :'start_month' => :'startMonth',
        :'start_year' => :'startYear',
        :'use_as' => :'useAs'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'expiration_month' => :'String',
        :'expiration_year' => :'String',
        :'type' => :'String',
        :'issue_number' => :'String',
        :'start_month' => :'String',
        :'start_year' => :'String',
        :'use_as' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'expirationMonth')
        self.expiration_month = attributes[:'expirationMonth']
      end

      if attributes.has_key?(:'expirationYear')
        self.expiration_year = attributes[:'expirationYear']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'issueNumber')
        self.issue_number = attributes[:'issueNumber']
      end

      if attributes.has_key?(:'startMonth')
        self.start_month = attributes[:'startMonth']
      end

      if attributes.has_key?(:'startYear')
        self.start_year = attributes[:'startYear']
      end

      if attributes.has_key?(:'useAs')
        self.use_as = attributes[:'useAs']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@expiration_month.nil? && @expiration_month.to_s.length > 2
        invalid_properties.push('invalid value for "expiration_month", the character length must be smaller than or equal to 2.')
      end

      if !@expiration_month.nil? && @expiration_month.to_s.length < 2
        invalid_properties.push('invalid value for "expiration_month", the character length must be great than or equal to 2.')
      end

      if !@expiration_year.nil? && @expiration_year.to_s.length > 4
        invalid_properties.push('invalid value for "expiration_year", the character length must be smaller than or equal to 4.')
      end

      if !@expiration_year.nil? && @expiration_year.to_s.length < 4
        invalid_properties.push('invalid value for "expiration_year", the character length must be great than or equal to 4.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if !@issue_number.nil? && @issue_number.to_s.length > 2
        invalid_properties.push('invalid value for "issue_number", the character length must be smaller than or equal to 2.')
      end

      if !@issue_number.nil? && @issue_number.to_s.length < 1
        invalid_properties.push('invalid value for "issue_number", the character length must be great than or equal to 1.')
      end

      if !@start_month.nil? && @start_month.to_s.length > 2
        invalid_properties.push('invalid value for "start_month", the character length must be smaller than or equal to 2.')
      end

      if !@start_month.nil? && @start_month.to_s.length < 2
        invalid_properties.push('invalid value for "start_month", the character length must be great than or equal to 2.')
      end

      if !@start_year.nil? && @start_year.to_s.length > 4
        invalid_properties.push('invalid value for "start_year", the character length must be smaller than or equal to 4.')
      end

      if !@start_year.nil? && @start_year.to_s.length < 4
        invalid_properties.push('invalid value for "start_year", the character length must be great than or equal to 4.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@expiration_month.nil? && @expiration_month.to_s.length > 2
      return false if !@expiration_month.nil? && @expiration_month.to_s.length < 2
      return false if !@expiration_year.nil? && @expiration_year.to_s.length > 4
      return false if !@expiration_year.nil? && @expiration_year.to_s.length < 4
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ['visa', 'mastercard', 'american express', 'discover', 'diners club', 'carte blanche', 'jcb', 'optima', 'twinpay credit', 'twinpay debit', 'walmart', 'enroute', 'lowes consumer', 'home depot consumer', 'mbna', 'dicks sportswear', 'casual corner', 'sears', 'jal', 'disney', 'maestro uk domestic', 'sams club consumer', 'sams club business', 'nicos', 'bill me later', 'bebe', 'restoration hardware', 'delta online', 'solo', 'visa electron', 'dankort', 'laser', 'carte bleue', 'carta si', 'pinless debit', 'encoded account', 'uatp', 'household', 'maestro international', 'ge money uk', 'korean cards', 'style', 'jcrew', 'payease china processing ewallet', 'payease china processing bank transfer', 'meijer private label', 'hipercard', 'aura', 'redecard', 'orico', 'elo', 'capital one private label', 'synchrony private label', 'china union pay', 'costco private label', 'mada', 'falabella private label'])
      return false unless type_validator.valid?(@type)
      return false if !@issue_number.nil? && @issue_number.to_s.length > 2
      return false if !@issue_number.nil? && @issue_number.to_s.length < 1
      return false if !@start_month.nil? && @start_month.to_s.length > 2
      return false if !@start_month.nil? && @start_month.to_s.length < 2
      return false if !@start_year.nil? && @start_year.to_s.length > 4
      return false if !@start_year.nil? && @start_year.to_s.length < 4
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_month Value to be assigned
    def expiration_month=(expiration_month)
      if !expiration_month.nil? && expiration_month.to_s.length > 2
        fail ArgumentError, 'invalid value for "expiration_month", the character length must be smaller than or equal to 2.'
      end

      if !expiration_month.nil? && expiration_month.to_s.length < 2
        fail ArgumentError, 'invalid value for "expiration_month", the character length must be great than or equal to 2.'
      end

      @expiration_month = expiration_month
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_year Value to be assigned
    def expiration_year=(expiration_year)
      if !expiration_year.nil? && expiration_year.to_s.length > 4
        fail ArgumentError, 'invalid value for "expiration_year", the character length must be smaller than or equal to 4.'
      end

      if !expiration_year.nil? && expiration_year.to_s.length < 4
        fail ArgumentError, 'invalid value for "expiration_year", the character length must be great than or equal to 4.'
      end

      @expiration_year = expiration_year
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['visa', 'mastercard', 'american express', 'discover', 'diners club', 'carte blanche', 'jcb', 'optima', 'twinpay credit', 'twinpay debit', 'walmart', 'enroute', 'lowes consumer', 'home depot consumer', 'mbna', 'dicks sportswear', 'casual corner', 'sears', 'jal', 'disney', 'maestro uk domestic', 'sams club consumer', 'sams club business', 'nicos', 'bill me later', 'bebe', 'restoration hardware', 'delta online', 'solo', 'visa electron', 'dankort', 'laser', 'carte bleue', 'carta si', 'pinless debit', 'encoded account', 'uatp', 'household', 'maestro international', 'ge money uk', 'korean cards', 'style', 'jcrew', 'payease china processing ewallet', 'payease china processing bank transfer', 'meijer private label', 'hipercard', 'aura', 'redecard', 'orico', 'elo', 'capital one private label', 'synchrony private label', 'china union pay', 'costco private label', 'mada', 'falabella private label'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] issue_number Value to be assigned
    def issue_number=(issue_number)
      if !issue_number.nil? && issue_number.to_s.length > 2
        fail ArgumentError, 'invalid value for "issue_number", the character length must be smaller than or equal to 2.'
      end

      if !issue_number.nil? && issue_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "issue_number", the character length must be great than or equal to 1.'
      end

      @issue_number = issue_number
    end

    # Custom attribute writer method with validation
    # @param [Object] start_month Value to be assigned
    def start_month=(start_month)
      if !start_month.nil? && start_month.to_s.length > 2
        fail ArgumentError, 'invalid value for "start_month", the character length must be smaller than or equal to 2.'
      end

      if !start_month.nil? && start_month.to_s.length < 2
        fail ArgumentError, 'invalid value for "start_month", the character length must be great than or equal to 2.'
      end

      @start_month = start_month
    end

    # Custom attribute writer method with validation
    # @param [Object] start_year Value to be assigned
    def start_year=(start_year)
      if !start_year.nil? && start_year.to_s.length > 4
        fail ArgumentError, 'invalid value for "start_year", the character length must be smaller than or equal to 4.'
      end

      if !start_year.nil? && start_year.to_s.length < 4
        fail ArgumentError, 'invalid value for "start_year", the character length must be great than or equal to 4.'
      end

      @start_year = start_year
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          expiration_month == o.expiration_month &&
          expiration_year == o.expiration_year &&
          type == o.type &&
          issue_number == o.issue_number &&
          start_month == o.start_month &&
          start_year == o.start_year &&
          use_as == o.use_as
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [expiration_month, expiration_year, type, issue_number, start_month, start_year, use_as].hash
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
