# CompareDocumentApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**compareDocumentDocx**](CompareDocumentApi.md#compareDocumentDocx) | **POST** /convert/compare/docx | Compare Two Word DOCX


## **compareDocumentDocx**

Compare Two Word DOCX

Compare two Office Word Documents (docx) files and highlight the differences

### Example
```bash
cloudmersive-cli compareDocumentDocx
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **File** | First input file to perform the operation on. |
 **inputFile2** | **File** | Second input file to perform the operation on (more than 2 can be supplied). |

### Return type

**string**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

