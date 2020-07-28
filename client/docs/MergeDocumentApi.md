# MergeDocumentApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**mergeDocumentDocx**](MergeDocumentApi.md#mergeDocumentDocx) | **POST** /convert/merge/docx | Merge Two Word DOCX Together
[**mergeDocumentDocxMulti**](MergeDocumentApi.md#mergeDocumentDocxMulti) | **POST** /convert/merge/docx/multi | Merge Multple Word DOCX Together
[**mergeDocumentPdf**](MergeDocumentApi.md#mergeDocumentPdf) | **POST** /convert/merge/pdf | Merge Two PDF Files Together
[**mergeDocumentPdfMulti**](MergeDocumentApi.md#mergeDocumentPdfMulti) | **POST** /convert/merge/pdf/multi | Merge Multple PDF Files Together
[**mergeDocumentPng**](MergeDocumentApi.md#mergeDocumentPng) | **POST** /convert/merge/png/vertical | Merge Two PNG Files Together
[**mergeDocumentPngMulti**](MergeDocumentApi.md#mergeDocumentPngMulti) | **POST** /convert/merge/png/vertical/multi | Merge Multple PNG Files Together
[**mergeDocumentPptx**](MergeDocumentApi.md#mergeDocumentPptx) | **POST** /convert/merge/pptx | Merge Two PowerPoint PPTX Together
[**mergeDocumentPptxMulti**](MergeDocumentApi.md#mergeDocumentPptxMulti) | **POST** /convert/merge/pptx/multi | Merge Multple PowerPoint PPTX Together
[**mergeDocumentTxt**](MergeDocumentApi.md#mergeDocumentTxt) | **POST** /convert/merge/txt | Merge Two Text (TXT) Files Together
[**mergeDocumentTxtMulti**](MergeDocumentApi.md#mergeDocumentTxtMulti) | **POST** /convert/merge/txt/multi | Merge Multple Text (TXT) Files Together
[**mergeDocumentXlsx**](MergeDocumentApi.md#mergeDocumentXlsx) | **POST** /convert/merge/xlsx | Merge Two Excel XLSX Together
[**mergeDocumentXlsxMulti**](MergeDocumentApi.md#mergeDocumentXlsxMulti) | **POST** /convert/merge/xlsx/multi | Merge Multple Excel XLSX Together


## **mergeDocumentDocx**

Merge Two Word DOCX Together

Combine two Office Word Documents (docx) into one single Office Word document

### Example
```bash
cloudmersive-cli mergeDocumentDocx
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

## **mergeDocumentDocxMulti**

Merge Multple Word DOCX Together

Combine multiple Office Word Documents (docx) into one single Office Word document

### Example
```bash
cloudmersive-cli mergeDocumentDocxMulti
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **File** | First input file to perform the operation on. |
 **inputFile2** | **File** | Second input file to perform the operation on. |
 **inputFile3** | **File** | Third input file to perform the operation on. | [optional]
 **inputFile4** | **File** | Fourth input file to perform the operation on. | [optional]
 **inputFile5** | **File** | Fifth input file to perform the operation on. | [optional]
 **inputFile6** | **File** | Sixth input file to perform the operation on. | [optional]
 **inputFile7** | **File** | Seventh input file to perform the operation on. | [optional]
 **inputFile8** | **File** | Eighth input file to perform the operation on. | [optional]
 **inputFile9** | **File** | Ninth input file to perform the operation on. | [optional]
 **inputFile10** | **File** | Tenth input file to perform the operation on. | [optional]

### Return type

**string**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **mergeDocumentPdf**

Merge Two PDF Files Together

Combine two PDF files (pdf) into a single PDF document, preserving the order of the input documents in the combined document

### Example
```bash
cloudmersive-cli mergeDocumentPdf
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

## **mergeDocumentPdfMulti**

Merge Multple PDF Files Together

Combine multiple PDF files (pdf) into a single PDF document, preserving the order of the input documents in the combined document

### Example
```bash
cloudmersive-cli mergeDocumentPdfMulti
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **File** | First input file to perform the operation on. |
 **inputFile2** | **File** | Second input file to perform the operation on. |
 **inputFile3** | **File** | Third input file to perform the operation on. | [optional]
 **inputFile4** | **File** | Fourth input file to perform the operation on. | [optional]
 **inputFile5** | **File** | Fifth input file to perform the operation on. | [optional]
 **inputFile6** | **File** | Sixth input file to perform the operation on. | [optional]
 **inputFile7** | **File** | Seventh input file to perform the operation on. | [optional]
 **inputFile8** | **File** | Eighth input file to perform the operation on. | [optional]
 **inputFile9** | **File** | Ninth input file to perform the operation on. | [optional]
 **inputFile10** | **File** | Tenth input file to perform the operation on. | [optional]

### Return type

**string**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **mergeDocumentPng**

Merge Two PNG Files Together

Combine two PNG files into a single PNG document, preserving the order of the input documents in the combined document by stacking them vertically

### Example
```bash
cloudmersive-cli mergeDocumentPng
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

## **mergeDocumentPngMulti**

Merge Multple PNG Files Together

Combine multiple PNG files into a single PNG document, preserving the order of the input documents in the combined document by stacking them vertically

### Example
```bash
cloudmersive-cli mergeDocumentPngMulti
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **File** | First input file to perform the operation on. |
 **inputFile2** | **File** | Second input file to perform the operation on. |
 **inputFile3** | **File** | Third input file to perform the operation on. | [optional]
 **inputFile4** | **File** | Fourth input file to perform the operation on. | [optional]
 **inputFile5** | **File** | Fifth input file to perform the operation on. | [optional]
 **inputFile6** | **File** | Sixth input file to perform the operation on. | [optional]
 **inputFile7** | **File** | Seventh input file to perform the operation on. | [optional]
 **inputFile8** | **File** | Eighth input file to perform the operation on. | [optional]
 **inputFile9** | **File** | Ninth input file to perform the operation on. | [optional]
 **inputFile10** | **File** | Tenth input file to perform the operation on. | [optional]

### Return type

**string**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **mergeDocumentPptx**

Merge Two PowerPoint PPTX Together

Combine two Office PowerPoint presentations (pptx) into one single Office PowerPoint presentation

### Example
```bash
cloudmersive-cli mergeDocumentPptx
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

## **mergeDocumentPptxMulti**

Merge Multple PowerPoint PPTX Together

Combine multiple Office PowerPoint presentations (pptx) into one single Office PowerPoint presentation

### Example
```bash
cloudmersive-cli mergeDocumentPptxMulti
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **File** | First input file to perform the operation on. |
 **inputFile2** | **File** | Second input file to perform the operation on. |
 **inputFile3** | **File** | Third input file to perform the operation on. | [optional]
 **inputFile4** | **File** | Fourth input file to perform the operation on. | [optional]
 **inputFile5** | **File** | Fifth input file to perform the operation on. | [optional]
 **inputFile6** | **File** | Sixth input file to perform the operation on. | [optional]
 **inputFile7** | **File** | Seventh input file to perform the operation on. | [optional]
 **inputFile8** | **File** | Eighth input file to perform the operation on. | [optional]
 **inputFile9** | **File** | Ninth input file to perform the operation on. | [optional]
 **inputFile10** | **File** | Tenth input file to perform the operation on. | [optional]

### Return type

**string**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **mergeDocumentTxt**

Merge Two Text (TXT) Files Together

Combine two Text (.TXT) files into a single text document, preserving the order of the input documents in the combined document by stacking them vertically.

### Example
```bash
cloudmersive-cli mergeDocumentTxt
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **File** | First input file to perform the operation on. |
 **inputFile2** | **File** | Second input file to perform the operation on (more than 2 can be supplied). |

### Return type

**map**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **mergeDocumentTxtMulti**

Merge Multple Text (TXT) Files Together

Combine multiple Text (.TXT) files into a single text document, preserving the order of the input documents in the combined document by stacking them vertically.

### Example
```bash
cloudmersive-cli mergeDocumentTxtMulti
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **File** | First input file to perform the operation on. |
 **inputFile2** | **File** | Second input file to perform the operation on. |
 **inputFile3** | **File** | Third input file to perform the operation on. | [optional]
 **inputFile4** | **File** | Fourth input file to perform the operation on. | [optional]
 **inputFile5** | **File** | Fifth input file to perform the operation on. | [optional]
 **inputFile6** | **File** | Sixth input file to perform the operation on. | [optional]
 **inputFile7** | **File** | Seventh input file to perform the operation on. | [optional]
 **inputFile8** | **File** | Eighth input file to perform the operation on. | [optional]
 **inputFile9** | **File** | Ninth input file to perform the operation on. | [optional]
 **inputFile10** | **File** | Tenth input file to perform the operation on. | [optional]

### Return type

**string**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **mergeDocumentXlsx**

Merge Two Excel XLSX Together

Combine two Office Excel spreadsheets (xlsx) into a single Office Excel spreadsheet

### Example
```bash
cloudmersive-cli mergeDocumentXlsx
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

## **mergeDocumentXlsxMulti**

Merge Multple Excel XLSX Together

Combine multiple Office Excel spreadsheets (xlsx) into a single Office Excel spreadsheet

### Example
```bash
cloudmersive-cli mergeDocumentXlsxMulti
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **File** | First input file to perform the operation on. |
 **inputFile2** | **File** | Second input file to perform the operation on. |
 **inputFile3** | **File** | Third input file to perform the operation on. | [optional]
 **inputFile4** | **File** | Fourth input file to perform the operation on. | [optional]
 **inputFile5** | **File** | Fifth input file to perform the operation on. | [optional]
 **inputFile6** | **File** | Sixth input file to perform the operation on. | [optional]
 **inputFile7** | **File** | Seventh input file to perform the operation on. | [optional]
 **inputFile8** | **File** | Eighth input file to perform the operation on. | [optional]
 **inputFile9** | **File** | Ninth input file to perform the operation on. | [optional]
 **inputFile10** | **File** | Tenth input file to perform the operation on. | [optional]

### Return type

**string**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

