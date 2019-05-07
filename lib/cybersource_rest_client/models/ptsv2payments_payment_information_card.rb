=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsPaymentInformationCard
    # The customer’s payment card number, also knows as the Primary Account Nunmber (PAN). You can also use this field for encoded account numbers.  For processor-specific information, see the `customer_cc_number` field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :number

    # Two-digit month in which the payment card expires.  Format: `MM`.  Valid values: `01` through `12`.  **Barclays and Streamline**\\ For Maestro (UK Domestic) and Maestro (International) cards on Barclays and Streamline, this must be a valid value (`01` through `12`) but is not required to be a valid expiration date. In other words, an expiration date that is in the past does not cause CyberSource to reject your request. However, an invalid expiration date might cause the issuer to reject your request.  **Encoded Account Numbers**\\ For encoded account numbers (_type_=039), if there is no expiration date on the card, use `12`.  For processor-specific information, see the `customer_cc_expmo` field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :expiration_month

    # Four-digit year in which the credit card expires.  Format: `YYYY`.   **Barclays and Streamline**\\ For Maestro (UK Domestic) and Maestro (International) cards on Barclays and Streamline, this must be a valid value (`1900` through `3000`) but is not required to be a valid expiration date. In other words, an expiration date that is in the past does not cause CyberSource to reject your request. However, an invalid expiration date might cause the issuer to reject your request.  **FDC Nashville Global and FDMS South**\\ You can send in 2 digits or 4 digits. If you send in 2 digits, they must be the last 2 digits of the year.  **Encoded Account Numbers**\\ For encoded account numbers (_type_=039), if there is no expiration date on the card, use `2021`.  For processor-specific information, see the `customer_cc_expyr` field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :expiration_year

    # Type of card to authorize. - 001 Visa - 002 Mastercard - 003 Amex - 004 Discover - 005: Diners Club - 007: JCB - 024: Maestro (UK Domestic) - 039 Encoded account number - 042: Maestro (International) 
    attr_accessor :type

    # Flag that specifies the type of account associated with the card. The cardholder provides this information during the payment process.  **Cielo** and **Comercio Latino**  Possible values:   - CREDIT: Credit card  - DEBIT: Debit card  This field is required for:  - Debit transactions on Cielo and Comercio Latino.  - Transactions with Brazilian-issued cards on CyberSource through VisaNet. 
    attr_accessor :use_as

    # Flag that specifies the type of account associated with the card. The cardholder provides this information during the payment process.  This field is required in the following cases:   - Debit transactions on Cielo and Comercio Latino.   - Transactions with Brazilian-issued cards on CyberSource through VisaNet.   - Applicable only for Visa Platform Connect (VPC).      **Note**\\ Combo cards in Brazil contain credit and debit functionality in a single card. Visa systems use a credit bank identification number (BIN) for this type of card. Using the BIN to determine whether a card is debit or credit can cause transactions with these cards to be processed incorrectly. CyberSource strongly recommends that you include this field for combo card transactions.  Possible values include the following.   - **CHECKING**: Checking account  - **CREDIT**: Credit card account  - **SAVING**: Saving account  - **LINE_OF_CREDIT**: Line of credit or credit portion of combo card  - **PREPAID**: Prepaid card account or prepaid portion of combo card  - **UNIVERSAL**: Universal account 
    attr_accessor :source_account_type

    # Card Verification Number.  **Ingenico ePayments** Do not include this field when _commerceIndicator=recurring_. **Note** Ingenico ePayments was previously called Global Collect. 
    attr_accessor :security_code

    # Flag that indicates whether a CVN code was sent. Possible values:   - 0 (default): CVN service not requested. CyberSource uses this default value when you do not include      _securityCode_ field in the request.  - 1 (default): CVN service requested and supported. CyberSource uses this default value when you include      _securityCode_ field in the request.  - 2: CVN on credit card is illegible.  - 9: CVN was not imprinted on credit card. 
    attr_accessor :security_code_indicator

    # Identifier for the issuing bank that provided the customer’s encoded account number. Contact your processor for the bank’s ID. 
    attr_accessor :account_encoder_id

    # Number of times a Maestro (UK Domestic) card has been issued to the account holder. The card might or might not have an issue number. The number can consist of one or two digits, and the first digit might be a zero. When you include this value in your request, include exactly what is printed on the card. A value of 2 is different than a value of 02. Do not include the field, even with a blank value, if the card is not a Maestro (UK Domestic) card.  **Note** The issue number is not required for Maestro (UK Domestic) transactions. 
    attr_accessor :issue_number

    # Month of the start of the Maestro (UK Domestic) card validity period. Do not include the field, even with a blank value, if the card is not a Maestro (UK Domestic) card. `Format: MM`. Possible values: 01 through 12.  **Note** The start date is not required for Maestro (UK Domestic) transactions. 
    attr_accessor :start_month

    # Year of the start of the Maestro (UK Domestic) card validity period. Do not include the field, even with a blank value, if the card is not a Maestro (UK Domestic) card. `Format: YYYY`.  **Note** The start date is not required for Maestro (UK Domestic) transactions. 
    attr_accessor :start_year

    # Name of the card product.  Possible value: - BNDES  This field is supported only for BNDES transactions on CyberSource through VisaNet. See BNDES.  The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP07 TCR4 - Position: 115-120 - Field: Brazil Country Data 
    attr_accessor :product_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'number' => :'number',
        :'expiration_month' => :'expirationMonth',
        :'expiration_year' => :'expirationYear',
        :'type' => :'type',
        :'use_as' => :'useAs',
        :'source_account_type' => :'sourceAccountType',
        :'security_code' => :'securityCode',
        :'security_code_indicator' => :'securityCodeIndicator',
        :'account_encoder_id' => :'accountEncoderId',
        :'issue_number' => :'issueNumber',
        :'start_month' => :'startMonth',
        :'start_year' => :'startYear',
        :'product_name' => :'productName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'number' => :'String',
        :'expiration_month' => :'String',
        :'expiration_year' => :'String',
        :'type' => :'String',
        :'use_as' => :'String',
        :'source_account_type' => :'String',
        :'security_code' => :'String',
        :'security_code_indicator' => :'String',
        :'account_encoder_id' => :'String',
        :'issue_number' => :'String',
        :'start_month' => :'String',
        :'start_year' => :'String',
        :'product_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.has_key?(:'expirationMonth')
        self.expiration_month = attributes[:'expirationMonth']
      end

      if attributes.has_key?(:'expirationYear')
        self.expiration_year = attributes[:'expirationYear']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'useAs')
        self.use_as = attributes[:'useAs']
      end

      if attributes.has_key?(:'sourceAccountType')
        self.source_account_type = attributes[:'sourceAccountType']
      end

      if attributes.has_key?(:'securityCode')
        self.security_code = attributes[:'securityCode']
      end

      if attributes.has_key?(:'securityCodeIndicator')
        self.security_code_indicator = attributes[:'securityCodeIndicator']
      end

      if attributes.has_key?(:'accountEncoderId')
        self.account_encoder_id = attributes[:'accountEncoderId']
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

      if attributes.has_key?(:'productName')
        self.product_name = attributes[:'productName']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@number.nil? && @number.to_s.length > 20
        invalid_properties.push('invalid value for "number", the character length must be smaller than or equal to 20.')
      end

      if !@expiration_month.nil? && @expiration_month.to_s.length > 2
        invalid_properties.push('invalid value for "expiration_month", the character length must be smaller than or equal to 2.')
      end

      if !@expiration_year.nil? && @expiration_year.to_s.length > 4
        invalid_properties.push('invalid value for "expiration_year", the character length must be smaller than or equal to 4.')
      end

      if !@use_as.nil? && @use_as.to_s.length > 20
        invalid_properties.push('invalid value for "use_as", the character length must be smaller than or equal to 20.')
      end

      if !@source_account_type.nil? && @source_account_type.to_s.length > 20
        invalid_properties.push('invalid value for "source_account_type", the character length must be smaller than or equal to 20.')
      end

      if !@security_code.nil? && @security_code.to_s.length > 4
        invalid_properties.push('invalid value for "security_code", the character length must be smaller than or equal to 4.')
      end

      if !@security_code_indicator.nil? && @security_code_indicator.to_s.length > 1
        invalid_properties.push('invalid value for "security_code_indicator", the character length must be smaller than or equal to 1.')
      end

      if !@account_encoder_id.nil? && @account_encoder_id.to_s.length > 3
        invalid_properties.push('invalid value for "account_encoder_id", the character length must be smaller than or equal to 3.')
      end

      if !@issue_number.nil? && @issue_number.to_s.length > 5
        invalid_properties.push('invalid value for "issue_number", the character length must be smaller than or equal to 5.')
      end

      if !@start_month.nil? && @start_month.to_s.length > 2
        invalid_properties.push('invalid value for "start_month", the character length must be smaller than or equal to 2.')
      end

      if !@start_year.nil? && @start_year.to_s.length > 4
        invalid_properties.push('invalid value for "start_year", the character length must be smaller than or equal to 4.')
      end

      if !@product_name.nil? && @product_name.to_s.length > 15
        invalid_properties.push('invalid value for "product_name", the character length must be smaller than or equal to 15.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@number.nil? && @number.to_s.length > 20
      return false if !@expiration_month.nil? && @expiration_month.to_s.length > 2
      return false if !@expiration_year.nil? && @expiration_year.to_s.length > 4
      return false if !@use_as.nil? && @use_as.to_s.length > 20
      return false if !@source_account_type.nil? && @source_account_type.to_s.length > 20
      return false if !@security_code.nil? && @security_code.to_s.length > 4
      return false if !@security_code_indicator.nil? && @security_code_indicator.to_s.length > 1
      return false if !@account_encoder_id.nil? && @account_encoder_id.to_s.length > 3
      return false if !@issue_number.nil? && @issue_number.to_s.length > 5
      return false if !@start_month.nil? && @start_month.to_s.length > 2
      return false if !@start_year.nil? && @start_year.to_s.length > 4
      return false if !@product_name.nil? && @product_name.to_s.length > 15
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if !number.nil? && number.to_s.length > 20
        fail ArgumentError, 'invalid value for "number", the character length must be smaller than or equal to 20.'
      end

      @number = number
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_month Value to be assigned
    def expiration_month=(expiration_month)
      if !expiration_month.nil? && expiration_month.to_s.length > 2
        fail ArgumentError, 'invalid value for "expiration_month", the character length must be smaller than or equal to 2.'
      end

      @expiration_month = expiration_month
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_year Value to be assigned
    def expiration_year=(expiration_year)
      if !expiration_year.nil? && expiration_year.to_s.length > 4
        fail ArgumentError, 'invalid value for "expiration_year", the character length must be smaller than or equal to 4.'
      end

      @expiration_year = expiration_year
    end

    # Custom attribute writer method with validation
    # @param [Object] use_as Value to be assigned
    def use_as=(use_as)
      if !use_as.nil? && use_as.to_s.length > 20
        fail ArgumentError, 'invalid value for "use_as", the character length must be smaller than or equal to 20.'
      end

      @use_as = use_as
    end

    # Custom attribute writer method with validation
    # @param [Object] source_account_type Value to be assigned
    def source_account_type=(source_account_type)
      if !source_account_type.nil? && source_account_type.to_s.length > 20
        fail ArgumentError, 'invalid value for "source_account_type", the character length must be smaller than or equal to 20.'
      end

      @source_account_type = source_account_type
    end

    # Custom attribute writer method with validation
    # @param [Object] security_code Value to be assigned
    def security_code=(security_code)
      if !security_code.nil? && security_code.to_s.length > 4
        fail ArgumentError, 'invalid value for "security_code", the character length must be smaller than or equal to 4.'
      end

      @security_code = security_code
    end

    # Custom attribute writer method with validation
    # @param [Object] security_code_indicator Value to be assigned
    def security_code_indicator=(security_code_indicator)
      if !security_code_indicator.nil? && security_code_indicator.to_s.length > 1
        fail ArgumentError, 'invalid value for "security_code_indicator", the character length must be smaller than or equal to 1.'
      end

      @security_code_indicator = security_code_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] account_encoder_id Value to be assigned
    def account_encoder_id=(account_encoder_id)
      if !account_encoder_id.nil? && account_encoder_id.to_s.length > 3
        fail ArgumentError, 'invalid value for "account_encoder_id", the character length must be smaller than or equal to 3.'
      end

      @account_encoder_id = account_encoder_id
    end

    # Custom attribute writer method with validation
    # @param [Object] issue_number Value to be assigned
    def issue_number=(issue_number)
      if !issue_number.nil? && issue_number.to_s.length > 5
        fail ArgumentError, 'invalid value for "issue_number", the character length must be smaller than or equal to 5.'
      end

      @issue_number = issue_number
    end

    # Custom attribute writer method with validation
    # @param [Object] start_month Value to be assigned
    def start_month=(start_month)
      if !start_month.nil? && start_month.to_s.length > 2
        fail ArgumentError, 'invalid value for "start_month", the character length must be smaller than or equal to 2.'
      end

      @start_month = start_month
    end

    # Custom attribute writer method with validation
    # @param [Object] start_year Value to be assigned
    def start_year=(start_year)
      if !start_year.nil? && start_year.to_s.length > 4
        fail ArgumentError, 'invalid value for "start_year", the character length must be smaller than or equal to 4.'
      end

      @start_year = start_year
    end

    # Custom attribute writer method with validation
    # @param [Object] product_name Value to be assigned
    def product_name=(product_name)
      if !product_name.nil? && product_name.to_s.length > 15
        fail ArgumentError, 'invalid value for "product_name", the character length must be smaller than or equal to 15.'
      end

      @product_name = product_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          number == o.number &&
          expiration_month == o.expiration_month &&
          expiration_year == o.expiration_year &&
          type == o.type &&
          use_as == o.use_as &&
          source_account_type == o.source_account_type &&
          security_code == o.security_code &&
          security_code_indicator == o.security_code_indicator &&
          account_encoder_id == o.account_encoder_id &&
          issue_number == o.issue_number &&
          start_month == o.start_month &&
          start_year == o.start_year &&
          product_name == o.product_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [number, expiration_month, expiration_year, type, use_as, source_account_type, security_code, security_code_indicator, account_encoder_id, issue_number, start_month, start_year, product_name].hash
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
