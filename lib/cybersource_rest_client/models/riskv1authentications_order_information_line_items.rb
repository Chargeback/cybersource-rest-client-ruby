=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Riskv1authenticationsOrderInformationLineItems
    # Total amount for the item. Normally calculated as the unit price times quantity.  When `orderInformation.lineItems[].productCode` is \"gift_card\", this is the purchase amount total for prepaid gift cards in major units.  Example: 123.45 USD = 123 
    attr_accessor :total_amount

    # Per-item price of the product. This value cannot be negative. You can include a decimal point (.), but you cannot include any other special characters. CyberSource truncates the amount to the correct number of decimal places.  For processor-specific information, see the `amount` field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html)  **Important** Some processors have specific requirements and limitations, such as maximum amounts and maximum field lengths. See these guides for details: - [Merchant Descriptors Using the SCMP API Guide] (https://apps.cybersource.com/library/documentation/dev_guides/Merchant_Descriptors_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm) - \"Capture Information for Specific Processors\" section in the [Credit Card Services Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm)  #### DCC with a Third-Party Provider Set this field to the converted amount that was returned by the DCC provider. You must include either the 1st line item in the order and this field, or the request-level field `orderInformation.amountDetails.totalAmount` in your request. For details, see \"Dynamic Currency Conversion with a Third Party Provider\" in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm)  #### FDMS South If you accept IDR or CLP currencies, see the entry for FDMS South in the [Merchant Descriptors Using the SCMP API Guide.] (https://apps.cybersource.com/library/documentation/dev_guides/Merchant_Descriptors_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm)  #### Zero Amount Authorizations If your processor supports zero amount authorizations, you can set this field to 0 for the authorization to check if the card is lost or stolen. See \"Zero Amount Authorizations\" in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm) 
    attr_accessor :unit_price

    # Number of units for this order.  The default is `1`. For an authorization or capture transaction (`processingOptions.capture` is set to `true` or `false`), this field is required when _orderInformation.lineItems[].productCode_ is not set to **default** or one of the other values that are related to shipping and/or handling.  When orderInformation.lineItems[].productCode is \"gift_card\", this is the total count of individual prepaid gift cards purchased. 
    attr_accessor :quantity

    # When `orderInformation.lineItems[].productCode` is \"gift_card\", this is the currency used for the gift card purchase.  For details, see `pa_gift_card_currency` field description in [CyberSource Payer Authentication Using the SCMP API.] (https://apps.cybersource.com/library/documentation/dev_guides/Payer_Authentication_SCMP_API/Payer_Authentication_SCMP_API.pdf)  For the possible values, see the [ISO Standard Currency Codes.](http://apps.cybersource.com/library/documentation/sbc/quickref/currencies.pdf) 
    attr_accessor :gift_card_currency

    # Stock Keeping Unit (SKU) code for the product.  For an authorization or capture transaction (`processingOptions.capture` is set to `true` or `false`), this field is required when _orderInformation.lineItems[].productCode_ is not set to **default** or one of the other values that are related to shipping and/or handling. 
    attr_accessor :product_sku

    # Brief description of item.
    attr_accessor :product_description

    # For an authorization or capture transaction (`processingOptions.capture` is set to `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not set to `default` or one of the other values that are related to shipping and/or handling. 
    attr_accessor :product_name

    attr_accessor :passenger

    # Total tax to apply to the product. This value cannot be negative. The tax amount and the offer amount must be in the same currency. The tax amount field is additive.  The following example uses a two-exponent currency such as USD:   1. You include each line item in your request.  ..- 1st line item has amount=10.00, quantity=1, and taxAmount=0.80  ..- 2nd line item has amount=20.00, quantity=1, and taxAmount=1.60  2. The total amount authorized will be 32.40, not 30.00 with 2.40 of tax included.  If you want to include the tax amount and also request the ics_tax service, see Tax Calculation Service Using the SCMP API.  This field is frequently used for Level II and Level III transactions. See Level II and Level III Processing Using the SCMP API. 
    attr_accessor :tax_amount

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'total_amount' => :'totalAmount',
        :'unit_price' => :'unitPrice',
        :'quantity' => :'quantity',
        :'gift_card_currency' => :'giftCardCurrency',
        :'product_sku' => :'productSKU',
        :'product_description' => :'productDescription',
        :'product_name' => :'productName',
        :'passenger' => :'passenger',
        :'tax_amount' => :'taxAmount'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'total_amount' => :'String',
        :'unit_price' => :'String',
        :'quantity' => :'Float',
        :'gift_card_currency' => :'Integer',
        :'product_sku' => :'String',
        :'product_description' => :'String',
        :'product_name' => :'String',
        :'passenger' => :'Riskv1decisionsOrderInformationPassenger',
        :'tax_amount' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'totalAmount')
        self.total_amount = attributes[:'totalAmount']
      end

      if attributes.has_key?(:'unitPrice')
        self.unit_price = attributes[:'unitPrice']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'giftCardCurrency')
        self.gift_card_currency = attributes[:'giftCardCurrency']
      end

      if attributes.has_key?(:'productSKU')
        self.product_sku = attributes[:'productSKU']
      end

      if attributes.has_key?(:'productDescription')
        self.product_description = attributes[:'productDescription']
      end

      if attributes.has_key?(:'productName')
        self.product_name = attributes[:'productName']
      end

      if attributes.has_key?(:'passenger')
        self.passenger = attributes[:'passenger']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@total_amount.nil? && @total_amount.to_s.length > 13
        invalid_properties.push('invalid value for "total_amount", the character length must be smaller than or equal to 13.')
      end

      if @unit_price.nil?
        invalid_properties.push('invalid value for "unit_price", unit_price cannot be nil.')
      end

      if @unit_price.to_s.length > 15
        invalid_properties.push('invalid value for "unit_price", the character length must be smaller than or equal to 15.')
      end

      if !@quantity.nil? && @quantity > 9999999999
        invalid_properties.push('invalid value for "quantity", must be smaller than or equal to 9999999999.')
      end

      if !@quantity.nil? && @quantity < 1
        invalid_properties.push('invalid value for "quantity", must be greater than or equal to 1.')
      end

      if !@product_sku.nil? && @product_sku.to_s.length > 255
        invalid_properties.push('invalid value for "product_sku", the character length must be smaller than or equal to 255.')
      end

      if !@product_name.nil? && @product_name.to_s.length > 255
        invalid_properties.push('invalid value for "product_name", the character length must be smaller than or equal to 255.')
      end

      if !@tax_amount.nil? && @tax_amount.to_s.length > 15
        invalid_properties.push('invalid value for "tax_amount", the character length must be smaller than or equal to 15.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@total_amount.nil? && @total_amount.to_s.length > 13
      return false if @unit_price.nil?
      return false if @unit_price.to_s.length > 15
      return false if !@quantity.nil? && @quantity > 9999999999
      return false if !@quantity.nil? && @quantity < 1
      return false if !@product_sku.nil? && @product_sku.to_s.length > 255
      return false if !@product_name.nil? && @product_name.to_s.length > 255
      return false if !@tax_amount.nil? && @tax_amount.to_s.length > 15
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] total_amount Value to be assigned
    def total_amount=(total_amount)
      if !total_amount.nil? && total_amount.to_s.length > 13
        fail ArgumentError, 'invalid value for "total_amount", the character length must be smaller than or equal to 13.'
      end

      @total_amount = total_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] unit_price Value to be assigned
    def unit_price=(unit_price)
      if unit_price.nil?
        fail ArgumentError, 'unit_price cannot be nil'
      end

      if unit_price.to_s.length > 15
        fail ArgumentError, 'invalid value for "unit_price", the character length must be smaller than or equal to 15.'
      end

      @unit_price = unit_price
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)
      if !quantity.nil? && quantity > 9999999999
        fail ArgumentError, 'invalid value for "quantity", must be smaller than or equal to 9999999999.'
      end

      if !quantity.nil? && quantity < 1
        fail ArgumentError, 'invalid value for "quantity", must be greater than or equal to 1.'
      end

      @quantity = quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] product_sku Value to be assigned
    def product_sku=(product_sku)
      if !product_sku.nil? && product_sku.to_s.length > 255
        fail ArgumentError, 'invalid value for "product_sku", the character length must be smaller than or equal to 255.'
      end

      @product_sku = product_sku
    end

    # Custom attribute writer method with validation
    # @param [Object] product_name Value to be assigned
    def product_name=(product_name)
      if !product_name.nil? && product_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "product_name", the character length must be smaller than or equal to 255.'
      end

      @product_name = product_name
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_amount Value to be assigned
    def tax_amount=(tax_amount)
      if !tax_amount.nil? && tax_amount.to_s.length > 15
        fail ArgumentError, 'invalid value for "tax_amount", the character length must be smaller than or equal to 15.'
      end

      @tax_amount = tax_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          total_amount == o.total_amount &&
          unit_price == o.unit_price &&
          quantity == o.quantity &&
          gift_card_currency == o.gift_card_currency &&
          product_sku == o.product_sku &&
          product_description == o.product_description &&
          product_name == o.product_name &&
          passenger == o.passenger &&
          tax_amount == o.tax_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [total_amount, unit_price, quantity, gift_card_currency, product_sku, product_description, product_name, passenger, tax_amount].hash
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
