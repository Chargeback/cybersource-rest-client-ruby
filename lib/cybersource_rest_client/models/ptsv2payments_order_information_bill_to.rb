=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsOrderInformationBillTo
    # Customer’s first name. This name must be the same as the name on the card.  #### CyberSource Latin American Processing **Important** For an authorization request, CyberSource Latin American Processing concatenates `orderInformation.billTo.firstName` and `orderInformation.billTo.lastName`. If the concatenated value exceeds 30 characters, CyberSource Latin American Processing declines the authorization request.\\ **Note** CyberSource Latin American Processing is the name of a specific processing connection that CyberSource supports. In the CyberSource API documentation, CyberSource Latin American Processing does not refer to the general topic of processing in Latin America. The information in this field description is for the specific processing connection called _CyberSource Latin American Processing_. It is not for any other Latin American processors that CyberSource supports.  #### CyberSource through VisaNet Credit card networks cannot process transactions that contain non-ASCII characters. CyberSource through VisaNet accepts and stores non-ASCII characters correctly and displays them correctly in reports. However, the limitations of the credit card networks prevent CyberSource through VisaNet from transmitting non-ASCII characters to the credit card networks. Therefore, CyberSource through VisaNet replaces non-ASCII characters with meaningless ASCII characters for transmission to the credit card networks.  #### For Payouts: This field may be sent only for FDC Compass.  **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  For processor-specific information, see the `customer_firstname` request-level field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :first_name

    # Customer’s last name. This name must be the same as the name on the card.  #### CyberSource Latin American Processing **Important** For an authorization request, CyberSource Latin American Processing concatenates `orderInformation.billTo.firstName` and `orderInformation.billTo.lastName`. If the concatenated value exceeds 30 characters, CyberSource Latin American Processing declines the authorization request.\\ **Note** CyberSource Latin American Processing is the name of a specific processing connection that CyberSource supports. In the CyberSource API documentation, CyberSource Latin American Processing does not refer to the general topic of processing in Latin America. The information in this field description is for the specific processing connection called CyberSource Latin American Processing. It is not for any other Latin American processors that CyberSource supports.  #### CyberSource through VisaNet Credit card networks cannot process transactions that contain non-ASCII characters. CyberSource through VisaNet accepts and stores non-ASCII characters correctly and displays them correctly in reports. However, the limitations of the credit card networks prevent CyberSource through VisaNet from transmitting non-ASCII characters to the credit card networks. Therefore, CyberSource through VisaNet replaces non-ASCII characters with meaningless ASCII characters for transmission to the credit card networks.  **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  #### For Payouts: This field may be sent only for FDC Compass.  For processor-specific information, see the `customer_lastname` request-level field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :last_name

    # Customer’s middle name. 
    attr_accessor :middle_name

    # Customer’s name suffix. 
    attr_accessor :name_suffix

    # Title. 
    attr_accessor :title

    # Name of the customer’s company.  #### CyberSource through VisaNet Credit card networks cannot process transactions that contain non-ASCII characters. CyberSource through VisaNet accepts and stores non-ASCII characters correctly and displays them correctly in reports. However, the limitations of the credit card networks prevent CyberSource through VisaNet from transmitting non-ASCII characters to the credit card networks. Therefore, CyberSource through VisaNet replaces non-ASCII characters with meaningless ASCII characters for transmission to the credit card networks. For processor-specific information, see the company_name field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :company

    # Payment card billing street address as it appears on the credit card issuer’s records.  #### Atos This field must not contain colons (:).  #### CyberSource through VisaNet **Important** When you populate billing street address 1 and billing street address 2, CyberSource through VisaNet concatenates the two values. If the concatenated value exceeds 40 characters, CyberSource through VisaNet truncates the value at 40 characters before sending it to Visa and the issuing bank. Truncating this value affects AVS results and therefore might also affect risk decisions and chargebacks. Credit card networks cannot process transactions that contain non-ASCII characters. CyberSource through VisaNet accepts and stores non-ASCII characters correctly and displays them correctly in reports. However, the limitations of the credit card networks prevent CyberSource through VisaNet from transmitting non-ASCII characters to the credit card networks. Therefore, CyberSource through VisaNet replaces non-ASCII characters with meaningless ASCII characters for transmission to the credit card networks.  #### For Payouts: This field may be sent only for FDC Compass.  **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  For processor-specific information, see the `bill_address1` request-level field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :address1

    # Additional address information.  For Payouts: This field may be sent only for FDC Compass.  #### Atos This field must not contain colons (:).  #### Chase Paymentech Solutions, FDC Compass, and TSYS Acquiring Solutions This value is used for AVS.  #### CyberSource through VisaNet **Important** When you populate billing street address 1 and billing street address 2, CyberSource through VisaNet concatenates the two values. If the concatenated value exceeds 40 characters, CyberSource through VisaNet truncates the value at 40 characters before sending it to Visa and the issuing bank. Truncating this value affects AVS results and therefore might also affect risk decisions and chargebacks. Credit card networks cannot process transactions that contain non-ASCII characters. CyberSource through VisaNet accepts and stores non-ASCII characters correctly and displays them correctly in reports. However, the limitations of the credit card networks prevent CyberSource through VisaNet from transmitting non-ASCII characters to the credit card networks. Therefore, CyberSource through VisaNet replaces non-ASCII characters with meaningless ASCII characters for transmission to the credit card networks.  For processor-specific information, see the `bill_address2` field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :address2

    # Additional address information (third line of the billing address) 
    attr_accessor :address3

    # Additional address information (fourth line of the billing address) 
    attr_accessor :address4

    # Payment card billing city.  #### Atos This field must not contain colons (:).  #### CyberSource through VisaNet Credit card networks cannot process transactions that contain non-ASCII characters. CyberSource through VisaNet accepts and stores non-ASCII characters correctly and displays them correctly in reports. However, the limitations of the credit card networks prevent CyberSource through VisaNet from transmitting non-ASCII characters to the credit card networks. Therefore, CyberSource through VisaNet replaces non-ASCII characters with meaningless ASCII characters for transmission to the credit card networks.  #### For Payouts: This field may be sent only for FDC Compass.  For processor-specific information, see the `bill_city` field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :locality

    # State or province of the billing address. Use the State, Province, and Territory Codes for the United States and Canada.  For Payouts: This field may be sent only for FDC Compass.  ##### CyberSource through VisaNet Credit card networks cannot process transactions that contain non-ASCII characters. CyberSource through VisaNet accepts and stores non-ASCII characters correctly and displays them correctly in reports. However, the limitations of the credit card networks prevent CyberSource through VisaNet from transmitting non-ASCII characters to the credit card networks. Therefore, CyberSource through VisaNet replaces non-ASCII characters with meaningless ASCII characters for transmission to the credit card networks.  **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  For processor-specific information, see the `bill_state` field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :administrative_area

    # Postal code for the billing address. The postal code must consist of 5 to 9 digits.  When the billing country is the U.S., the 9-digit postal code must follow this format: [5 digits][dash][4 digits]  **Example** `12345-6789`  When the billing country is Canada, the 6-digit postal code must follow this format: [alpha][numeric][alpha][space][numeric][alpha][numeric]  **Example** `A1B 2C3`  **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  #### For Payouts:  This field may be sent only for FDC Compass.  #### American Express Direct Before sending the postal code to the processor, CyberSource removes all nonalphanumeric characters and, if the remaining value is longer than nine characters, truncates the value starting from the right side.  #### Atos This field must not contain colons (:).  #### CyberSource through VisaNet Credit card networks cannot process transactions that contain non-ASCII characters. CyberSource through VisaNet accepts and stores non-ASCII characters correctly and displays them correctly in reports. However, the limitations of the credit card networks prevent CyberSource through VisaNet from transmitting non-ASCII characters to the credit card networks. Therefore, CyberSource through VisaNet replaces non-ASCII characters with meaningless ASCII characters for transmission to the credit card networks.  For processor-specific information, see the `bill_zip` request-level field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :postal_code

    # Payment card billing country. Use the two-character ISO Standard Country Codes.  #### CyberSource through VisaNet Credit card networks cannot process transactions that contain non-ASCII characters. CyberSource through VisaNet accepts and stores non-ASCII characters correctly and displays them correctly in reports. However, the limitations of the credit card networks prevent CyberSource through VisaNet from transmitting non-ASCII characters to the credit card networks. Therefore, CyberSource through VisaNet replaces non-ASCII characters with meaningless ASCII characters for transmission to the credit card networks.  **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  For processor-specific information, see the `bill_country` field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :country

    # Customer’s neighborhood, community, or region (a barrio in Brazil) within the city or municipality. This field is available only on **Cielo**. 
    attr_accessor :district

    # Building number in the street address.  For example, if the street address is: Rua da Quitanda 187 then the building number is 187.  This field is supported only for:  - Cielo transactions.  - Redecard customer validation with CyberSource Latin American Processing. 
    attr_accessor :building_number

    # Customer's email address, including the full domain name.  #### CyberSource through VisaNet Credit card networks cannot process transactions that contain non-ASCII characters. CyberSource through VisaNet accepts and stores non-ASCII characters correctly and displays them correctly in reports. However, the limitations of the credit card networks prevent CyberSource through VisaNet from transmitting non-ASCII characters to the credit card networks. Therefore, CyberSource through VisaNet replaces non-ASCII characters with meaningless ASCII characters for transmission to the credit card networks.  **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  For processor-specific information, see the `customer_email` request-level field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html)  #### Invoicing Email address for the customer for sending the invoice. If the invoice is in SENT status and email is updated, the old email customer payment link won't work and you must resend the invoice with the new payment link. 
    attr_accessor :email

    # Email domain of the customer. The domain of the email address comprises all characters that follow the @ symbol, such as mail.example.com. For the Risk Update service, if the email address and the domain are sent in the request, the domain supersedes the email address. 
    attr_accessor :email_domain

    # Customer’s phone number.  #### For Payouts: This field may be sent only for FDC Compass.  CyberSource recommends that you include the country code when the order is from outside the U.S.  For processor-specific information, see the customer_phone field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html)  #### CyberSource through VisaNet Credit card networks cannot process transactions that contain non-ASCII characters. CyberSource through VisaNet accepts and stores non-ASCII characters correctly and displays them correctly in reports. However, the limitations of the credit card networks prevent CyberSource through VisaNet from transmitting non-ASCII characters to the credit card networks. Therefore, CyberSource through VisaNet replaces non-ASCII characters with meaningless ASCII characters for transmission to the credit card networks. 
    attr_accessor :phone_number

    # Customer's phone number type.  #### For Payouts: This field may be sent only for FDC Compass.  Possible Values: * day * home * night * work 
    attr_accessor :phone_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'middle_name' => :'middleName',
        :'name_suffix' => :'nameSuffix',
        :'title' => :'title',
        :'company' => :'company',
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'address3' => :'address3',
        :'address4' => :'address4',
        :'locality' => :'locality',
        :'administrative_area' => :'administrativeArea',
        :'postal_code' => :'postalCode',
        :'country' => :'country',
        :'district' => :'district',
        :'building_number' => :'buildingNumber',
        :'email' => :'email',
        :'email_domain' => :'emailDomain',
        :'phone_number' => :'phoneNumber',
        :'phone_type' => :'phoneType'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'middle_name' => :'String',
        :'name_suffix' => :'String',
        :'title' => :'String',
        :'company' => :'String',
        :'address1' => :'String',
        :'address2' => :'String',
        :'address3' => :'String',
        :'address4' => :'String',
        :'locality' => :'String',
        :'administrative_area' => :'String',
        :'postal_code' => :'String',
        :'country' => :'String',
        :'district' => :'String',
        :'building_number' => :'String',
        :'email' => :'String',
        :'email_domain' => :'String',
        :'phone_number' => :'String',
        :'phone_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'middleName')
        self.middle_name = attributes[:'middleName']
      end

      if attributes.has_key?(:'nameSuffix')
        self.name_suffix = attributes[:'nameSuffix']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.has_key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.has_key?(:'address3')
        self.address3 = attributes[:'address3']
      end

      if attributes.has_key?(:'address4')
        self.address4 = attributes[:'address4']
      end

      if attributes.has_key?(:'locality')
        self.locality = attributes[:'locality']
      end

      if attributes.has_key?(:'administrativeArea')
        self.administrative_area = attributes[:'administrativeArea']
      end

      if attributes.has_key?(:'postalCode')
        self.postal_code = attributes[:'postalCode']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'district')
        self.district = attributes[:'district']
      end

      if attributes.has_key?(:'buildingNumber')
        self.building_number = attributes[:'buildingNumber']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'emailDomain')
        self.email_domain = attributes[:'emailDomain']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'phoneType')
        self.phone_type = attributes[:'phoneType']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@first_name.nil? && @first_name.to_s.length > 60
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 60.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 60
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 60.')
      end

      if !@middle_name.nil? && @middle_name.to_s.length > 60
        invalid_properties.push('invalid value for "middle_name", the character length must be smaller than or equal to 60.')
      end

      if !@name_suffix.nil? && @name_suffix.to_s.length > 60
        invalid_properties.push('invalid value for "name_suffix", the character length must be smaller than or equal to 60.')
      end

      if !@title.nil? && @title.to_s.length > 60
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 60.')
      end

      if !@company.nil? && @company.to_s.length > 60
        invalid_properties.push('invalid value for "company", the character length must be smaller than or equal to 60.')
      end

      if !@address1.nil? && @address1.to_s.length > 60
        invalid_properties.push('invalid value for "address1", the character length must be smaller than or equal to 60.')
      end

      if !@address2.nil? && @address2.to_s.length > 60
        invalid_properties.push('invalid value for "address2", the character length must be smaller than or equal to 60.')
      end

      if !@address3.nil? && @address3.to_s.length > 60
        invalid_properties.push('invalid value for "address3", the character length must be smaller than or equal to 60.')
      end

      if !@address4.nil? && @address4.to_s.length > 60
        invalid_properties.push('invalid value for "address4", the character length must be smaller than or equal to 60.')
      end

      if !@locality.nil? && @locality.to_s.length > 50
        invalid_properties.push('invalid value for "locality", the character length must be smaller than or equal to 50.')
      end

      if !@administrative_area.nil? && @administrative_area.to_s.length > 20
        invalid_properties.push('invalid value for "administrative_area", the character length must be smaller than or equal to 20.')
      end

      if !@postal_code.nil? && @postal_code.to_s.length > 10
        invalid_properties.push('invalid value for "postal_code", the character length must be smaller than or equal to 10.')
      end

      if !@country.nil? && @country.to_s.length > 2
        invalid_properties.push('invalid value for "country", the character length must be smaller than or equal to 2.')
      end

      if !@district.nil? && @district.to_s.length > 50
        invalid_properties.push('invalid value for "district", the character length must be smaller than or equal to 50.')
      end

      if !@building_number.nil? && @building_number.to_s.length > 256
        invalid_properties.push('invalid value for "building_number", the character length must be smaller than or equal to 256.')
      end

      if !@email.nil? && @email.to_s.length > 255
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 255.')
      end

      if !@email_domain.nil? && @email_domain.to_s.length > 100
        invalid_properties.push('invalid value for "email_domain", the character length must be smaller than or equal to 100.')
      end

      if !@phone_number.nil? && @phone_number.to_s.length > 15
        invalid_properties.push('invalid value for "phone_number", the character length must be smaller than or equal to 15.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@first_name.nil? && @first_name.to_s.length > 60
      return false if !@last_name.nil? && @last_name.to_s.length > 60
      return false if !@middle_name.nil? && @middle_name.to_s.length > 60
      return false if !@name_suffix.nil? && @name_suffix.to_s.length > 60
      return false if !@title.nil? && @title.to_s.length > 60
      return false if !@company.nil? && @company.to_s.length > 60
      return false if !@address1.nil? && @address1.to_s.length > 60
      return false if !@address2.nil? && @address2.to_s.length > 60
      return false if !@address3.nil? && @address3.to_s.length > 60
      return false if !@address4.nil? && @address4.to_s.length > 60
      return false if !@locality.nil? && @locality.to_s.length > 50
      return false if !@administrative_area.nil? && @administrative_area.to_s.length > 20
      return false if !@postal_code.nil? && @postal_code.to_s.length > 10
      return false if !@country.nil? && @country.to_s.length > 2
      return false if !@district.nil? && @district.to_s.length > 50
      return false if !@building_number.nil? && @building_number.to_s.length > 256
      return false if !@email.nil? && @email.to_s.length > 255
      return false if !@email_domain.nil? && @email_domain.to_s.length > 100
      return false if !@phone_number.nil? && @phone_number.to_s.length > 15
      true
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
    # @param [Object] middle_name Value to be assigned
    def middle_name=(middle_name)
      if !middle_name.nil? && middle_name.to_s.length > 60
        fail ArgumentError, 'invalid value for "middle_name", the character length must be smaller than or equal to 60.'
      end

      @middle_name = middle_name
    end

    # Custom attribute writer method with validation
    # @param [Object] name_suffix Value to be assigned
    def name_suffix=(name_suffix)
      if !name_suffix.nil? && name_suffix.to_s.length > 60
        fail ArgumentError, 'invalid value for "name_suffix", the character length must be smaller than or equal to 60.'
      end

      @name_suffix = name_suffix
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if !title.nil? && title.to_s.length > 60
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 60.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] company Value to be assigned
    def company=(company)
      if !company.nil? && company.to_s.length > 60
        fail ArgumentError, 'invalid value for "company", the character length must be smaller than or equal to 60.'
      end

      @company = company
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
    # @param [Object] address3 Value to be assigned
    def address3=(address3)
      if !address3.nil? && address3.to_s.length > 60
        fail ArgumentError, 'invalid value for "address3", the character length must be smaller than or equal to 60.'
      end

      @address3 = address3
    end

    # Custom attribute writer method with validation
    # @param [Object] address4 Value to be assigned
    def address4=(address4)
      if !address4.nil? && address4.to_s.length > 60
        fail ArgumentError, 'invalid value for "address4", the character length must be smaller than or equal to 60.'
      end

      @address4 = address4
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
    # @param [Object] administrative_area Value to be assigned
    def administrative_area=(administrative_area)
      if !administrative_area.nil? && administrative_area.to_s.length > 20
        fail ArgumentError, 'invalid value for "administrative_area", the character length must be smaller than or equal to 20.'
      end

      @administrative_area = administrative_area
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      if !postal_code.nil? && postal_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "postal_code", the character length must be smaller than or equal to 10.'
      end

      @postal_code = postal_code
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
    # @param [Object] district Value to be assigned
    def district=(district)
      if !district.nil? && district.to_s.length > 50
        fail ArgumentError, 'invalid value for "district", the character length must be smaller than or equal to 50.'
      end

      @district = district
    end

    # Custom attribute writer method with validation
    # @param [Object] building_number Value to be assigned
    def building_number=(building_number)
      if !building_number.nil? && building_number.to_s.length > 256
        fail ArgumentError, 'invalid value for "building_number", the character length must be smaller than or equal to 256.'
      end

      @building_number = building_number
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length > 255
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 255.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] email_domain Value to be assigned
    def email_domain=(email_domain)
      if !email_domain.nil? && email_domain.to_s.length > 100
        fail ArgumentError, 'invalid value for "email_domain", the character length must be smaller than or equal to 100.'
      end

      @email_domain = email_domain
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if !phone_number.nil? && phone_number.to_s.length > 15
        fail ArgumentError, 'invalid value for "phone_number", the character length must be smaller than or equal to 15.'
      end

      @phone_number = phone_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          middle_name == o.middle_name &&
          name_suffix == o.name_suffix &&
          title == o.title &&
          company == o.company &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          address3 == o.address3 &&
          address4 == o.address4 &&
          locality == o.locality &&
          administrative_area == o.administrative_area &&
          postal_code == o.postal_code &&
          country == o.country &&
          district == o.district &&
          building_number == o.building_number &&
          email == o.email &&
          email_domain == o.email_domain &&
          phone_number == o.phone_number &&
          phone_type == o.phone_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [first_name, last_name, middle_name, name_suffix, title, company, address1, address2, address3, address4, locality, administrative_area, postal_code, country, district, building_number, email, email_domain, phone_number, phone_type].hash
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
