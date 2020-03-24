# CyberSource::PaymentsApi

All URIs are relative to *https://apitest.cybersource.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment**](PaymentsApi.md#create_payment) | **POST** /pts/v2/payments | Process a Payment
[**increment_auth**](PaymentsApi.md#increment_auth) | **PATCH** /pts/v2/payments/{id} | Increment an Authorization


# **create_payment**
> PtsV2PaymentsPost201Response create_payment(create_payment_request)

Process a Payment

Authorize the payment for the transaction. 

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::PaymentsApi.new

create_payment_request = CyberSource::CreatePaymentRequest.new # CreatePaymentRequest | 


begin
  #Process a Payment
  result = api_instance.create_payment(create_payment_request)
  p result
rescue CyberSource::ApiError => e
  puts "Exception when calling PaymentsApi->create_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_payment_request** | [**CreatePaymentRequest**](CreatePaymentRequest.md)|  | 

### Return type

[**PtsV2PaymentsPost201Response**](PtsV2PaymentsPost201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/hal+json;charset=utf-8



# **increment_auth**
> PtsV2IncrementalAuthorizationPatch201Response increment_auth(id, increment_auth_request)

Increment an Authorization

Use this service to authorize additional charges in a lodging or autorental transaction. Include the ID returned from the original authorization in the PATCH request to add additional charges to that authorization. 

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::PaymentsApi.new

id = "id_example" # String | The ID returned from the original authorization request.

increment_auth_request = CyberSource::IncrementAuthRequest.new # IncrementAuthRequest | 


begin
  #Increment an Authorization
  result = api_instance.increment_auth(id, increment_auth_request)
  p result
rescue CyberSource::ApiError => e
  puts "Exception when calling PaymentsApi->increment_auth: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID returned from the original authorization request. | 
 **increment_auth_request** | [**IncrementAuthRequest**](IncrementAuthRequest.md)|  | 

### Return type

[**PtsV2IncrementalAuthorizationPatch201Response**](PtsV2IncrementalAuthorizationPatch201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/hal+json;charset=utf-8



