# convertapi Bash client

## Overview
This is a Bash client script for accessing convertapi service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x cloudmersive-cli

# Print the list of operations available on the service
$ ./cloudmersive-cli -h

# Print the service description
$ ./cloudmersive-cli --about

# Print detailed information about specific operation
$ ./cloudmersive-cli <operationId> -h

# Make GET request
./cloudmersive-cli --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
cloudmersive-cli -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' | cloudmersive-cli --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' | cloudmersive-cli --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Preview the cURL command without actually executing it
$ cloudmersive-cli --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image
You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash
The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source cloudmersive-cli.bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp cloudmersive-cli.bash-completion /etc/bash-completion.d/cloudmersive-cli
```

#### OS X
On OSX you might need to install bash-completion using Homebrew:
```shell
brew install bash-completion
```
and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh
In Zsh, the generated `_cloudmersive-cli` Zsh completion file must be copied to one of the folders under `$FPATH` variable.


## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CompareDocumentApi* | [**compareDocumentDocx**](docs/CompareDocumentApi.md#comparedocumentdocx) | **POST** /convert/compare/docx | Compare Two Word DOCX
*ConvertDataApi* | [**convertDataCsvToJson**](docs/ConvertDataApi.md#convertdatacsvtojson) | **POST** /convert/csv/to/json | Convert CSV to JSON conversion
*ConvertDataApi* | [**convertDataJsonToXml**](docs/ConvertDataApi.md#convertdatajsontoxml) | **POST** /convert/json/to/xml | Convert JSON to XML conversion
*ConvertDataApi* | [**convertDataXlsToJson**](docs/ConvertDataApi.md#convertdataxlstojson) | **POST** /convert/xls/to/json | Convert Excel (97-2003) XLS to JSON conversion
*ConvertDataApi* | [**convertDataXlsxToJson**](docs/ConvertDataApi.md#convertdataxlsxtojson) | **POST** /convert/xlsx/to/json | Convert Excel XLSX to JSON conversion
*ConvertDataApi* | [**convertDataXmlEditAddAttributeWithXPath**](docs/ConvertDataApi.md#convertdataxmleditaddattributewithxpath) | **POST** /convert/xml/edit/xpath/add-attribute | Adds an attribute to all XML nodes matching XPath expression
*ConvertDataApi* | [**convertDataXmlEditAddChildWithXPath**](docs/ConvertDataApi.md#convertdataxmleditaddchildwithxpath) | **POST** /convert/xml/edit/xpath/add-child | Adds an XML node as a child to XML nodes matching XPath expression
*ConvertDataApi* | [**convertDataXmlEditRemoveAllChildNodesWithXPath**](docs/ConvertDataApi.md#convertdataxmleditremoveallchildnodeswithxpath) | **POST** /convert/xml/edit/xpath/remove-all-children | Removes, deletes all children of nodes matching XPath expression, but does not remove the nodes
*ConvertDataApi* | [**convertDataXmlEditReplaceWithXPath**](docs/ConvertDataApi.md#convertdataxmleditreplacewithxpath) | **POST** /convert/xml/edit/xpath/replace | Replaces XML nodes matching XPath expression with new node
*ConvertDataApi* | [**convertDataXmlEditSetValueWithXPath**](docs/ConvertDataApi.md#convertdataxmleditsetvaluewithxpath) | **POST** /convert/xml/edit/xpath/set-value | Sets the value contents of XML nodes matching XPath expression
*ConvertDataApi* | [**convertDataXmlFilterWithXPath**](docs/ConvertDataApi.md#convertdataxmlfilterwithxpath) | **POST** /convert/xml/select/xpath | Filter, select XML nodes using XPath expression, get results
*ConvertDataApi* | [**convertDataXmlQueryWithXQuery**](docs/ConvertDataApi.md#convertdataxmlquerywithxquery) | **POST** /convert/xml/query/xquery | Query an XML file using XQuery query, get results
*ConvertDataApi* | [**convertDataXmlQueryWithXQueryMulti**](docs/ConvertDataApi.md#convertdataxmlquerywithxquerymulti) | **POST** /convert/xml/query/xquery/multi | Query multiple XML files using XQuery query, get results
*ConvertDataApi* | [**convertDataXmlRemoveWithXPath**](docs/ConvertDataApi.md#convertdataxmlremovewithxpath) | **POST** /convert/xml/edit/xpath/remove | Remove, delete XML nodes and items matching XPath expression
*ConvertDataApi* | [**convertDataXmlToJson**](docs/ConvertDataApi.md#convertdataxmltojson) | **POST** /convert/xml/to/json | Convert XML to JSON conversion
*ConvertDataApi* | [**convertDataXmlTransformWithXsltToXml**](docs/ConvertDataApi.md#convertdataxmltransformwithxslttoxml) | **POST** /convert/xml/transform/xslt/to/xml | Transform XML document file with XSLT into a new XML document
*ConvertDocumentApi* | [**convertDocumentAutodetectGetInfo**](docs/ConvertDocumentApi.md#convertdocumentautodetectgetinfo) | **POST** /convert/autodetect/get-info | Get document type information
*ConvertDocumentApi* | [**convertDocumentAutodetectToJpg**](docs/ConvertDocumentApi.md#convertdocumentautodetecttojpg) | **POST** /convert/autodetect/to/jpg | Convert Document to JPG/JPEG image array
*ConvertDocumentApi* | [**convertDocumentAutodetectToPdf**](docs/ConvertDocumentApi.md#convertdocumentautodetecttopdf) | **POST** /convert/autodetect/to/pdf | Convert Document to PDF
*ConvertDocumentApi* | [**convertDocumentAutodetectToPngArray**](docs/ConvertDocumentApi.md#convertdocumentautodetecttopngarray) | **POST** /convert/autodetect/to/png | Convert Document to PNG array
*ConvertDocumentApi* | [**convertDocumentAutodetectToThumbnail**](docs/ConvertDocumentApi.md#convertdocumentautodetecttothumbnail) | **POST** /convert/autodetect/to/thumbnail | Convert File to Thumbnail Image
*ConvertDocumentApi* | [**convertDocumentAutodetectToThumbnailsAdvanced**](docs/ConvertDocumentApi.md#convertdocumentautodetecttothumbnailsadvanced) | **POST** /convert/autodetect/to/thumbnail/advanced | Convert File to Thumbnail Image Object
*ConvertDocumentApi* | [**convertDocumentAutodetectToTxt**](docs/ConvertDocumentApi.md#convertdocumentautodetecttotxt) | **POST** /convert/autodetect/to/txt | Convert Document to Text (txt)
*ConvertDocumentApi* | [**convertDocumentCsvToXlsx**](docs/ConvertDocumentApi.md#convertdocumentcsvtoxlsx) | **POST** /convert/csv/to/xlsx | Convert CSV to Excel XLSX Spreadsheet
*ConvertDocumentApi* | [**convertDocumentDocToDocx**](docs/ConvertDocumentApi.md#convertdocumentdoctodocx) | **POST** /convert/doc/to/docx | Convert Word DOC (97-03) Document to DOCX
*ConvertDocumentApi* | [**convertDocumentDocToPdf**](docs/ConvertDocumentApi.md#convertdocumentdoctopdf) | **POST** /convert/doc/to/pdf | Convert Word DOC (97-03) Document to PDF
*ConvertDocumentApi* | [**convertDocumentDocToTxt**](docs/ConvertDocumentApi.md#convertdocumentdoctotxt) | **POST** /convert/doc/to/txt | Convert Word DOC (97-03) Document to Text (txt)
*ConvertDocumentApi* | [**convertDocumentDocxToHtml**](docs/ConvertDocumentApi.md#convertdocumentdocxtohtml) | **POST** /convert/docx/to/html | Convert Word DOCX Document to HTML Document
*ConvertDocumentApi* | [**convertDocumentDocxToJpg**](docs/ConvertDocumentApi.md#convertdocumentdocxtojpg) | **POST** /convert/docx/to/jpg | Convert Word DOCX Document to JPG/JPEG image array
*ConvertDocumentApi* | [**convertDocumentDocxToPdf**](docs/ConvertDocumentApi.md#convertdocumentdocxtopdf) | **POST** /convert/docx/to/pdf | Convert Word DOCX Document to PDF
*ConvertDocumentApi* | [**convertDocumentDocxToPng**](docs/ConvertDocumentApi.md#convertdocumentdocxtopng) | **POST** /convert/docx/to/png | Convert Word DOCX Document to PNG image array
*ConvertDocumentApi* | [**convertDocumentDocxToRtf**](docs/ConvertDocumentApi.md#convertdocumentdocxtortf) | **POST** /convert/docx/to/rtf | Convert Word DOCX Document to RTF
*ConvertDocumentApi* | [**convertDocumentDocxToTxt**](docs/ConvertDocumentApi.md#convertdocumentdocxtotxt) | **POST** /convert/docx/to/txt | Convert Word DOCX Document to Text (txt)
*ConvertDocumentApi* | [**convertDocumentEmlToHtml**](docs/ConvertDocumentApi.md#convertdocumentemltohtml) | **POST** /convert/eml/to/html | Convert Email EML file to HTML string
*ConvertDocumentApi* | [**convertDocumentEmlToJpg**](docs/ConvertDocumentApi.md#convertdocumentemltojpg) | **POST** /convert/eml/to/jpg | Convert Email EML file to JPG/JPEG image array
*ConvertDocumentApi* | [**convertDocumentEmlToPdf**](docs/ConvertDocumentApi.md#convertdocumentemltopdf) | **POST** /convert/eml/to/pdf | Convert Email EML file to PDF document
*ConvertDocumentApi* | [**convertDocumentEmlToPng**](docs/ConvertDocumentApi.md#convertdocumentemltopng) | **POST** /convert/eml/to/png | Convert Email EML file to PNG image array
*ConvertDocumentApi* | [**convertDocumentGetFileTypeIcon**](docs/ConvertDocumentApi.md#convertdocumentgetfiletypeicon) | **POST** /convert/autodetect/get-icon | Get PNG icon file for the file extension
*ConvertDocumentApi* | [**convertDocumentGetFileTypeIconAdvanced**](docs/ConvertDocumentApi.md#convertdocumentgetfiletypeiconadvanced) | **POST** /convert/autodetect/get-icon/advanced | Get PNG icon byte array for the file extension
*ConvertDocumentApi* | [**convertDocumentHtmlToPdf**](docs/ConvertDocumentApi.md#convertdocumenthtmltopdf) | **POST** /convert/html/to/pdf | Convert HTML document file to PDF Document
*ConvertDocumentApi* | [**convertDocumentHtmlToPng**](docs/ConvertDocumentApi.md#convertdocumenthtmltopng) | **POST** /convert/html/to/png | Convert HTML document file to PNG image array
*ConvertDocumentApi* | [**convertDocumentHtmlToTxt**](docs/ConvertDocumentApi.md#convertdocumenthtmltotxt) | **POST** /convert/html/to/txt | HTML Document file to Text (txt)
*ConvertDocumentApi* | [**convertDocumentKeynoteToJpg**](docs/ConvertDocumentApi.md#convertdocumentkeynotetojpg) | **POST** /convert/key/to/jpg | Convert Keynote Presentation (KEY) to JPG/JPEG image array
*ConvertDocumentApi* | [**convertDocumentKeynoteToPdf**](docs/ConvertDocumentApi.md#convertdocumentkeynotetopdf) | **POST** /convert/key/to/pdf | Convert Keynote Presentation (KEY) to PDF
*ConvertDocumentApi* | [**convertDocumentKeynoteToPng**](docs/ConvertDocumentApi.md#convertdocumentkeynotetopng) | **POST** /convert/key/to/png | Convert Keynote Presentation (KEY) to PNG image array
*ConvertDocumentApi* | [**convertDocumentKeynoteToPptx**](docs/ConvertDocumentApi.md#convertdocumentkeynotetopptx) | **POST** /convert/key/to/pptx | Convert Keynote Presentation (KEY) to PPTX
*ConvertDocumentApi* | [**convertDocumentMsgToHtml**](docs/ConvertDocumentApi.md#convertdocumentmsgtohtml) | **POST** /convert/msg/to/html | Convert Email MSG file to HTML string
*ConvertDocumentApi* | [**convertDocumentMsgToJpg**](docs/ConvertDocumentApi.md#convertdocumentmsgtojpg) | **POST** /convert/msg/to/jpg | Convert Email MSG file to JPG/JPEG image array
*ConvertDocumentApi* | [**convertDocumentMsgToPdf**](docs/ConvertDocumentApi.md#convertdocumentmsgtopdf) | **POST** /convert/msg/to/pdf | Convert Email MSG file to PDF document
*ConvertDocumentApi* | [**convertDocumentMsgToPng**](docs/ConvertDocumentApi.md#convertdocumentmsgtopng) | **POST** /convert/msg/to/png | Convert Email MSG file to PNG image array
*ConvertDocumentApi* | [**convertDocumentOdpToJpg**](docs/ConvertDocumentApi.md#convertdocumentodptojpg) | **POST** /convert/odp/to/jpg | Convert ODP Presentation to JPG/JPEG image array
*ConvertDocumentApi* | [**convertDocumentOdpToPdf**](docs/ConvertDocumentApi.md#convertdocumentodptopdf) | **POST** /convert/odp/to/pdf | Convert ODP Presentation to PDF
*ConvertDocumentApi* | [**convertDocumentOdpToPng**](docs/ConvertDocumentApi.md#convertdocumentodptopng) | **POST** /convert/odp/to/png | Convert ODP Presentation to PNG image array
*ConvertDocumentApi* | [**convertDocumentOdpToPptx**](docs/ConvertDocumentApi.md#convertdocumentodptopptx) | **POST** /convert/odp/to/pptx | Convert ODP Presentation to PPTX
*ConvertDocumentApi* | [**convertDocumentOdsToJpg**](docs/ConvertDocumentApi.md#convertdocumentodstojpg) | **POST** /convert/ods/to/jpg | Convert ODS Spreadsheet to JPG/JPEG image array
*ConvertDocumentApi* | [**convertDocumentOdsToPdf**](docs/ConvertDocumentApi.md#convertdocumentodstopdf) | **POST** /convert/ods/to/pdf | Convert ODS Spreadsheet to PDF
*ConvertDocumentApi* | [**convertDocumentOdsToPng**](docs/ConvertDocumentApi.md#convertdocumentodstopng) | **POST** /convert/ods/to/png | Convert ODS Spreadsheet to PNG image array
*ConvertDocumentApi* | [**convertDocumentOdsToXlsx**](docs/ConvertDocumentApi.md#convertdocumentodstoxlsx) | **POST** /convert/ods/to/xlsx | Convert ODS Spreadsheet to XLSX
*ConvertDocumentApi* | [**convertDocumentOdtToDocx**](docs/ConvertDocumentApi.md#convertdocumentodttodocx) | **POST** /convert/odt/to/docx | Convert ODT Text File to Word DOCX
*ConvertDocumentApi* | [**convertDocumentOdtToJpg**](docs/ConvertDocumentApi.md#convertdocumentodttojpg) | **POST** /convert/odt/to/jpg | Convert ODT Text File to JPG/JPEG image array
*ConvertDocumentApi* | [**convertDocumentOdtToPdf**](docs/ConvertDocumentApi.md#convertdocumentodttopdf) | **POST** /convert/odt/to/pdf | Convert ODT Text File to PDF
*ConvertDocumentApi* | [**convertDocumentOdtToPng**](docs/ConvertDocumentApi.md#convertdocumentodttopng) | **POST** /convert/odt/to/png | Convert ODT Text File to PNG image array
*ConvertDocumentApi* | [**convertDocumentPdfToDocx**](docs/ConvertDocumentApi.md#convertdocumentpdftodocx) | **POST** /convert/pdf/to/docx | Convert PDF to Word DOCX Document
*ConvertDocumentApi* | [**convertDocumentPdfToDocxRasterize**](docs/ConvertDocumentApi.md#convertdocumentpdftodocxrasterize) | **POST** /convert/pdf/to/docx/rasterize | Convert PDF to Word DOCX Document based on rasterized version of the PDF
*ConvertDocumentApi* | [**convertDocumentPdfToJpg**](docs/ConvertDocumentApi.md#convertdocumentpdftojpg) | **POST** /convert/pdf/to/jpg | Convert PDF to JPG/JPEG image array
*ConvertDocumentApi* | [**convertDocumentPdfToPngArray**](docs/ConvertDocumentApi.md#convertdocumentpdftopngarray) | **POST** /convert/pdf/to/png | Convert PDF to PNG Image Array
*ConvertDocumentApi* | [**convertDocumentPdfToPngSingle**](docs/ConvertDocumentApi.md#convertdocumentpdftopngsingle) | **POST** /convert/pdf/to/png/merge-single | Convert PDF to Single PNG image
*ConvertDocumentApi* | [**convertDocumentPdfToPptx**](docs/ConvertDocumentApi.md#convertdocumentpdftopptx) | **POST** /convert/pdf/to/pptx | Convert PDF to PowerPoint PPTX Presentation
*ConvertDocumentApi* | [**convertDocumentPdfToTxt**](docs/ConvertDocumentApi.md#convertdocumentpdftotxt) | **POST** /convert/pdf/to/txt | Convert PDF Document to Text (txt)
*ConvertDocumentApi* | [**convertDocumentPngArrayToPdf**](docs/ConvertDocumentApi.md#convertdocumentpngarraytopdf) | **POST** /convert/png/to/pdf | Convert PNG Array to PDF
*ConvertDocumentApi* | [**convertDocumentPptToPdf**](docs/ConvertDocumentApi.md#convertdocumentppttopdf) | **POST** /convert/ppt/to/pdf | Convert PowerPoint PPT (97-03) Presentation to PDF
*ConvertDocumentApi* | [**convertDocumentPptToPptx**](docs/ConvertDocumentApi.md#convertdocumentppttopptx) | **POST** /convert/ppt/to/pptx | Convert PowerPoint PPT (97-03) Presentation to PPTX
*ConvertDocumentApi* | [**convertDocumentPptxToPdf**](docs/ConvertDocumentApi.md#convertdocumentpptxtopdf) | **POST** /convert/pptx/to/pdf | Convert PowerPoint PPTX Presentation to PDF
*ConvertDocumentApi* | [**convertDocumentPptxToPng**](docs/ConvertDocumentApi.md#convertdocumentpptxtopng) | **POST** /convert/pptx/to/png | Convert PowerPoint PPTX to PNG image array
*ConvertDocumentApi* | [**convertDocumentPptxToTxt**](docs/ConvertDocumentApi.md#convertdocumentpptxtotxt) | **POST** /convert/pptx/to/txt | Convert PowerPoint PPTX Presentation to Text (txt)
*ConvertDocumentApi* | [**convertDocumentRtfToDocx**](docs/ConvertDocumentApi.md#convertdocumentrtftodocx) | **POST** /convert/rtf/to/docx | Convert Rich Text Format RTF to DOCX Document
*ConvertDocumentApi* | [**convertDocumentRtfToHtml**](docs/ConvertDocumentApi.md#convertdocumentrtftohtml) | **POST** /convert/rtf/to/html | Convert Rich Text Format RTF to HTML Document
*ConvertDocumentApi* | [**convertDocumentRtfToJpg**](docs/ConvertDocumentApi.md#convertdocumentrtftojpg) | **POST** /convert/rtf/to/jpg | Convert Rich Text Format RTF to JPG/JPEG image array
*ConvertDocumentApi* | [**convertDocumentRtfToPdf**](docs/ConvertDocumentApi.md#convertdocumentrtftopdf) | **POST** /convert/rtf/to/pdf | Convert Rich Text Format RTF to PDF
*ConvertDocumentApi* | [**convertDocumentRtfToPng**](docs/ConvertDocumentApi.md#convertdocumentrtftopng) | **POST** /convert/rtf/to/png | Convert Rich Text Format RTF to PNG image array
*ConvertDocumentApi* | [**convertDocumentXlsToCsv**](docs/ConvertDocumentApi.md#convertdocumentxlstocsv) | **POST** /convert/xls/to/csv | Convert Excel XLS (97-03) Spreadsheet to CSV
*ConvertDocumentApi* | [**convertDocumentXlsToPdf**](docs/ConvertDocumentApi.md#convertdocumentxlstopdf) | **POST** /convert/xls/to/pdf | Convert Excel XLS (97-03) Spreadsheet to PDF
*ConvertDocumentApi* | [**convertDocumentXlsToXlsx**](docs/ConvertDocumentApi.md#convertdocumentxlstoxlsx) | **POST** /convert/xls/to/xlsx | Convert Excel XLS (97-03) Spreadsheet to XLSX
*ConvertDocumentApi* | [**convertDocumentXlsxToCsv**](docs/ConvertDocumentApi.md#convertdocumentxlsxtocsv) | **POST** /convert/xlsx/to/csv | Convert Excel XLSX Spreadsheet to CSV, Single Worksheet
*ConvertDocumentApi* | [**convertDocumentXlsxToCsvMulti**](docs/ConvertDocumentApi.md#convertdocumentxlsxtocsvmulti) | **POST** /convert/xlsx/to/csv/multi | Convert Excel XLSX Spreadsheet to CSV, Multiple Worksheets
*ConvertDocumentApi* | [**convertDocumentXlsxToPdf**](docs/ConvertDocumentApi.md#convertdocumentxlsxtopdf) | **POST** /convert/xlsx/to/pdf | Convert Excel XLSX Spreadsheet to PDF
*ConvertDocumentApi* | [**convertDocumentXlsxToPng**](docs/ConvertDocumentApi.md#convertdocumentxlsxtopng) | **POST** /convert/xlsx/to/png | Convert Excel XLSX spreadsheet to PNG image array
*ConvertDocumentApi* | [**convertDocumentXlsxToTxt**](docs/ConvertDocumentApi.md#convertdocumentxlsxtotxt) | **POST** /convert/xlsx/to/txt | Convert Excel XLSX Spreadsheet to Text (txt)
*ConvertImageApi* | [**convertImageGetImageInfo**](docs/ConvertImageApi.md#convertimagegetimageinfo) | **POST** /convert/image/get-info | Get information about an image
*ConvertImageApi* | [**convertImageImageFormatConvert**](docs/ConvertImageApi.md#convertimageimageformatconvert) | **POST** /convert/image/{format1}/to/{format2} | Image format conversion
*ConvertImageApi* | [**convertImageImageSetDPI**](docs/ConvertImageApi.md#convertimageimagesetdpi) | **POST** /convert/image/set-dpi/{dpi} | Change image DPI
*ConvertImageApi* | [**convertImageMultipageImageFormatConvert**](docs/ConvertImageApi.md#convertimagemultipageimageformatconvert) | **POST** /convert/image-multipage/{format1}/to/{format2} | Multi-page image format conversion
*ConvertTemplateApi* | [**convertTemplateApplyDocxTemplate**](docs/ConvertTemplateApi.md#converttemplateapplydocxtemplate) | **POST** /convert/template/docx/apply | Apply Word DOCX template
*ConvertTemplateApi* | [**convertTemplateApplyHtmlTemplate**](docs/ConvertTemplateApi.md#converttemplateapplyhtmltemplate) | **POST** /convert/template/html/apply | Apply HTML template
*ConvertWebApi* | [**convertWebHtmlToDocx**](docs/ConvertWebApi.md#convertwebhtmltodocx) | **POST** /convert/html/to/docx | Convert HTML to Word DOCX Document
*ConvertWebApi* | [**convertWebHtmlToPdf**](docs/ConvertWebApi.md#convertwebhtmltopdf) | **POST** /convert/web/html/to/pdf | Convert HTML string to PDF
*ConvertWebApi* | [**convertWebHtmlToPng**](docs/ConvertWebApi.md#convertwebhtmltopng) | **POST** /convert/web/html/to/png | Convert HTML string to PNG screenshot
*ConvertWebApi* | [**convertWebHtmlToTxt**](docs/ConvertWebApi.md#convertwebhtmltotxt) | **POST** /convert/web/html/to/txt | Convert HTML string to text (txt)
*ConvertWebApi* | [**convertWebMdToHtml**](docs/ConvertWebApi.md#convertwebmdtohtml) | **POST** /convert/web/md/to/html | Convert Markdown to HTML
*ConvertWebApi* | [**convertWebUrlToPdf**](docs/ConvertWebApi.md#convertweburltopdf) | **POST** /convert/web/url/to/pdf | Convert a URL to PDF
*ConvertWebApi* | [**convertWebUrlToScreenshot**](docs/ConvertWebApi.md#convertweburltoscreenshot) | **POST** /convert/web/url/to/screenshot | Take screenshot of URL
*ConvertWebApi* | [**convertWebUrlToTxt**](docs/ConvertWebApi.md#convertweburltotxt) | **POST** /convert/web/url/to/txt | Convert website URL page to text (txt)
*EditDocumentApi* | [**editDocumentBeginEditing**](docs/EditDocumentApi.md#editdocumentbeginediting) | **POST** /convert/edit/begin-editing | Begin editing a document
*EditDocumentApi* | [**editDocumentDocxBody**](docs/EditDocumentApi.md#editdocumentdocxbody) | **POST** /convert/edit/docx/get-body | Get body from a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxCreateBlankDocument**](docs/EditDocumentApi.md#editdocumentdocxcreateblankdocument) | **POST** /convert/edit/docx/create/blank | Create a blank Word DOCX document
*EditDocumentApi* | [**editDocumentDocxDeletePages**](docs/EditDocumentApi.md#editdocumentdocxdeletepages) | **POST** /convert/edit/docx/delete-pages | Delete, remove pages from a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxDeleteTableRow**](docs/EditDocumentApi.md#editdocumentdocxdeletetablerow) | **POST** /convert/edit/docx/delete-table-row | Deletes a table row in an existing table in a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxDeleteTableRowRange**](docs/EditDocumentApi.md#editdocumentdocxdeletetablerowrange) | **POST** /convert/edit/docx/delete-table-row/range | Deletes a range of multiple table rows in an existing table in a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxFindParagraph**](docs/EditDocumentApi.md#editdocumentdocxfindparagraph) | **POST** /convert/edit/docx/find/paragraph | Find matching paragraphs in a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxGetComments**](docs/EditDocumentApi.md#editdocumentdocxgetcomments) | **POST** /convert/edit/docx/get-comments/flat-list | Get comments from a Word DOCX document as a flat list
*EditDocumentApi* | [**editDocumentDocxGetCommentsHierarchical**](docs/EditDocumentApi.md#editdocumentdocxgetcommentshierarchical) | **POST** /convert/edit/docx/get-comments/hierarchical | Get comments from a Word DOCX document hierarchically
*EditDocumentApi* | [**editDocumentDocxGetHeadersAndFooters**](docs/EditDocumentApi.md#editdocumentdocxgetheadersandfooters) | **POST** /convert/edit/docx/get-headers-and-footers | Get content of a footer from a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxGetImages**](docs/EditDocumentApi.md#editdocumentdocxgetimages) | **POST** /convert/edit/docx/get-images | Get images from a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxGetSections**](docs/EditDocumentApi.md#editdocumentdocxgetsections) | **POST** /convert/edit/docx/get-sections | Get sections from a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxGetStyles**](docs/EditDocumentApi.md#editdocumentdocxgetstyles) | **POST** /convert/edit/docx/get-styles | Get styles from a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxGetTableByIndex**](docs/EditDocumentApi.md#editdocumentdocxgettablebyindex) | **POST** /convert/edit/docx/get-table/by-index | Get a specific table by index in a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxGetTableRow**](docs/EditDocumentApi.md#editdocumentdocxgettablerow) | **POST** /convert/edit/docx/get-table-row | Gets the contents of an existing table row in an existing table in a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxGetTables**](docs/EditDocumentApi.md#editdocumentdocxgettables) | **POST** /convert/edit/docx/get-tables | Get all tables in Word DOCX document
*EditDocumentApi* | [**editDocumentDocxInsertCommentOnParagraph**](docs/EditDocumentApi.md#editdocumentdocxinsertcommentonparagraph) | **POST** /convert/edit/docx/insert-comment/on/paragraph | Insert a new comment into a Word DOCX document attached to a paragraph
*EditDocumentApi* | [**editDocumentDocxInsertImage**](docs/EditDocumentApi.md#editdocumentdocxinsertimage) | **POST** /convert/edit/docx/insert-image | Insert image into a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxInsertParagraph**](docs/EditDocumentApi.md#editdocumentdocxinsertparagraph) | **POST** /convert/edit/docx/insert-paragraph | Insert a new paragraph into a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxInsertTable**](docs/EditDocumentApi.md#editdocumentdocxinserttable) | **POST** /convert/edit/docx/insert-table | Insert a new table into a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxInsertTableRow**](docs/EditDocumentApi.md#editdocumentdocxinserttablerow) | **POST** /convert/edit/docx/insert-table-row | Insert a new row into an existing table in a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxPages**](docs/EditDocumentApi.md#editdocumentdocxpages) | **POST** /convert/edit/docx/get-pages | Get pages and content from a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxRemoveHeadersAndFooters**](docs/EditDocumentApi.md#editdocumentdocxremoveheadersandfooters) | **POST** /convert/edit/docx/remove-headers-and-footers | Remove headers and footers from Word DOCX document
*EditDocumentApi* | [**editDocumentDocxRemoveObject**](docs/EditDocumentApi.md#editdocumentdocxremoveobject) | **POST** /convert/edit/docx/remove-object | Delete any object in a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxReplace**](docs/EditDocumentApi.md#editdocumentdocxreplace) | **POST** /convert/edit/docx/replace-all | Replace string in Word DOCX document
*EditDocumentApi* | [**editDocumentDocxReplaceParagraph**](docs/EditDocumentApi.md#editdocumentdocxreplaceparagraph) | **POST** /convert/edit/docx/replace/paragraph | Replace matching paragraphs in a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxSetFooter**](docs/EditDocumentApi.md#editdocumentdocxsetfooter) | **POST** /convert/edit/docx/set-footer | Set the footer in a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxSetFooterAddPageNumber**](docs/EditDocumentApi.md#editdocumentdocxsetfooteraddpagenumber) | **POST** /convert/edit/docx/set-footer/add-page-number | Add page number to footer in a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxSetHeader**](docs/EditDocumentApi.md#editdocumentdocxsetheader) | **POST** /convert/edit/docx/set-header | Set the header in a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxUpdateTableCell**](docs/EditDocumentApi.md#editdocumentdocxupdatetablecell) | **POST** /convert/edit/docx/update-table-cell | Update, set contents of a table cell in an existing table in a Word DOCX document
*EditDocumentApi* | [**editDocumentDocxUpdateTableRow**](docs/EditDocumentApi.md#editdocumentdocxupdatetablerow) | **POST** /convert/edit/docx/update-table-row | Update, set contents of a table row in an existing table in a Word DOCX document
*EditDocumentApi* | [**editDocumentFinishEditing**](docs/EditDocumentApi.md#editdocumentfinishediting) | **POST** /convert/edit/finish-editing | Finish editing document, and download result from document editing
*EditDocumentApi* | [**editDocumentPptxDeleteSlides**](docs/EditDocumentApi.md#editdocumentpptxdeleteslides) | **POST** /convert/edit/pptx/delete-slides | Delete, remove slides from a PowerPoint PPTX presentation document
*EditDocumentApi* | [**editDocumentPptxReplace**](docs/EditDocumentApi.md#editdocumentpptxreplace) | **POST** /convert/edit/pptx/replace-all | Replace string in PowerPoint PPTX presentation
*EditDocumentApi* | [**editDocumentXlsxAppendRow**](docs/EditDocumentApi.md#editdocumentxlsxappendrow) | **POST** /convert/edit/xlsx/append-row | Append row to a Excel XLSX spreadsheet, worksheet
*EditDocumentApi* | [**editDocumentXlsxClearCellByIndex**](docs/EditDocumentApi.md#editdocumentxlsxclearcellbyindex) | **POST** /convert/edit/xlsx/clear-cell/by-index | Clear cell contents in an Excel XLSX spreadsheet, worksheet by index
*EditDocumentApi* | [**editDocumentXlsxClearRow**](docs/EditDocumentApi.md#editdocumentxlsxclearrow) | **POST** /convert/edit/xlsx/clear-row | Clear row from a Excel XLSX spreadsheet, worksheet
*EditDocumentApi* | [**editDocumentXlsxCreateBlankSpreadsheet**](docs/EditDocumentApi.md#editdocumentxlsxcreateblankspreadsheet) | **POST** /convert/edit/xlsx/create/blank | Create a blank Excel XLSX spreadsheet
*EditDocumentApi* | [**editDocumentXlsxCreateSpreadsheetFromData**](docs/EditDocumentApi.md#editdocumentxlsxcreatespreadsheetfromdata) | **POST** /convert/edit/xlsx/create/from/data | Create a new Excel XLSX spreadsheet from column and row data
*EditDocumentApi* | [**editDocumentXlsxDeleteWorksheet**](docs/EditDocumentApi.md#editdocumentxlsxdeleteworksheet) | **POST** /convert/edit/xlsx/delete-worksheet | Delete, remove worksheet from an Excel XLSX spreadsheet document
*EditDocumentApi* | [**editDocumentXlsxDisableSharedWorkbook**](docs/EditDocumentApi.md#editdocumentxlsxdisablesharedworkbook) | **POST** /convert/edit/xlsx/configuration/disable-shared-workbook | Disable Shared Workbook (legacy) in Excel XLSX spreadsheet
*EditDocumentApi* | [**editDocumentXlsxEnableSharedWorkbook**](docs/EditDocumentApi.md#editdocumentxlsxenablesharedworkbook) | **POST** /convert/edit/xlsx/configuration/enable-shared-workbook | Enable Shared Workbook (legacy) in Excel XLSX spreadsheet
*EditDocumentApi* | [**editDocumentXlsxGetCellByIdentifier**](docs/EditDocumentApi.md#editdocumentxlsxgetcellbyidentifier) | **POST** /convert/edit/xlsx/get-cell/by-identifier | Get cell from an Excel XLSX spreadsheet, worksheet by cell identifier
*EditDocumentApi* | [**editDocumentXlsxGetCellByIndex**](docs/EditDocumentApi.md#editdocumentxlsxgetcellbyindex) | **POST** /convert/edit/xlsx/get-cell/by-index | Get cell from an Excel XLSX spreadsheet, worksheet by index
*EditDocumentApi* | [**editDocumentXlsxGetColumns**](docs/EditDocumentApi.md#editdocumentxlsxgetcolumns) | **POST** /convert/edit/xlsx/get-columns | Get columns from a Excel XLSX spreadsheet, worksheet
*EditDocumentApi* | [**editDocumentXlsxGetImages**](docs/EditDocumentApi.md#editdocumentxlsxgetimages) | **POST** /convert/edit/xlsx/get-images | Get images from a Excel XLSX spreadsheet, worksheet
*EditDocumentApi* | [**editDocumentXlsxGetRowsAndCells**](docs/EditDocumentApi.md#editdocumentxlsxgetrowsandcells) | **POST** /convert/edit/xlsx/get-rows-and-cells | Get rows and cells from a Excel XLSX spreadsheet, worksheet
*EditDocumentApi* | [**editDocumentXlsxGetSpecificRow**](docs/EditDocumentApi.md#editdocumentxlsxgetspecificrow) | **POST** /convert/edit/xlsx/get-specific-row | Get a specific row from a Excel XLSX spreadsheet, worksheet by path
*EditDocumentApi* | [**editDocumentXlsxGetStyles**](docs/EditDocumentApi.md#editdocumentxlsxgetstyles) | **POST** /convert/edit/xlsx/get-styles | Get styles from a Excel XLSX spreadsheet, worksheet
*EditDocumentApi* | [**editDocumentXlsxGetWorksheets**](docs/EditDocumentApi.md#editdocumentxlsxgetworksheets) | **POST** /convert/edit/xlsx/get-worksheets | Get worksheets from a Excel XLSX spreadsheet
*EditDocumentApi* | [**editDocumentXlsxInsertWorksheet**](docs/EditDocumentApi.md#editdocumentxlsxinsertworksheet) | **POST** /convert/edit/xlsx/insert-worksheet | Insert a new worksheet into an Excel XLSX spreadsheet
*EditDocumentApi* | [**editDocumentXlsxRenameWorksheet**](docs/EditDocumentApi.md#editdocumentxlsxrenameworksheet) | **POST** /convert/edit/xlsx/rename-worksheet | Rename a specific worksheet in a Excel XLSX spreadsheet
*EditDocumentApi* | [**editDocumentXlsxSetCellByIdentifier**](docs/EditDocumentApi.md#editdocumentxlsxsetcellbyidentifier) | **POST** /convert/edit/xlsx/set-cell/by-identifier | Set, update cell contents in an Excel XLSX spreadsheet, worksheet by cell identifier
*EditDocumentApi* | [**editDocumentXlsxSetCellByIndex**](docs/EditDocumentApi.md#editdocumentxlsxsetcellbyindex) | **POST** /convert/edit/xlsx/set-cell/by-index | Set, update cell contents in an Excel XLSX spreadsheet, worksheet by index
*EditPdfApi* | [**editPdfAddAnnotations**](docs/EditPdfApi.md#editpdfaddannotations) | **POST** /convert/edit/pdf/annotations/add-item | Add one or more PDF annotations, comments in the PDF document
*EditPdfApi* | [**editPdfDecrypt**](docs/EditPdfApi.md#editpdfdecrypt) | **POST** /convert/edit/pdf/decrypt | Decrypt and password-protect a PDF
*EditPdfApi* | [**editPdfDeletePages**](docs/EditPdfApi.md#editpdfdeletepages) | **POST** /convert/edit/pdf/pages/delete | Remove, delete pages from a PDF document
*EditPdfApi* | [**editPdfEncrypt**](docs/EditPdfApi.md#editpdfencrypt) | **POST** /convert/edit/pdf/encrypt | Encrypt and password-protect a PDF
*EditPdfApi* | [**editPdfGetAnnotations**](docs/EditPdfApi.md#editpdfgetannotations) | **POST** /convert/edit/pdf/annotations/list | Get PDF annotations, including comments in the document
*EditPdfApi* | [**editPdfGetFormFields**](docs/EditPdfApi.md#editpdfgetformfields) | **POST** /convert/edit/pdf/form/get-fields | Gets PDF Form fields and values
*EditPdfApi* | [**editPdfGetMetadata**](docs/EditPdfApi.md#editpdfgetmetadata) | **POST** /convert/edit/pdf/get-metadata | Get PDF document metadata
*EditPdfApi* | [**editPdfGetPdfTextByPages**](docs/EditPdfApi.md#editpdfgetpdftextbypages) | **POST** /convert/edit/pdf/pages/get-text | Get text in a PDF document by page
*EditPdfApi* | [**editPdfInsertPages**](docs/EditPdfApi.md#editpdfinsertpages) | **POST** /convert/edit/pdf/pages/insert | Insert, copy pages from one PDF document into another
*EditPdfApi* | [**editPdfRasterize**](docs/EditPdfApi.md#editpdfrasterize) | **POST** /convert/edit/pdf/rasterize | Rasterize a PDF to an image-based PDF
*EditPdfApi* | [**editPdfRemoveAllAnnotations**](docs/EditPdfApi.md#editpdfremoveallannotations) | **POST** /convert/edit/pdf/annotations/remove-all | Remove all PDF annotations, including comments in the document
*EditPdfApi* | [**editPdfRemoveAnnotationItem**](docs/EditPdfApi.md#editpdfremoveannotationitem) | **POST** /convert/edit/pdf/annotations/remove-item | Remove a specific PDF annotation, comment in the document
*EditPdfApi* | [**editPdfRotateAllPages**](docs/EditPdfApi.md#editpdfrotateallpages) | **POST** /convert/edit/pdf/pages/rotate/all | Rotate all pages in a PDF document
*EditPdfApi* | [**editPdfRotatePageRange**](docs/EditPdfApi.md#editpdfrotatepagerange) | **POST** /convert/edit/pdf/pages/rotate/page-range | Rotate a range, subset of pages in a PDF document
*EditPdfApi* | [**editPdfSetFormFields**](docs/EditPdfApi.md#editpdfsetformfields) | **POST** /convert/edit/pdf/form/set-fields | Sets ands fills PDF Form field values
*EditPdfApi* | [**editPdfSetMetadata**](docs/EditPdfApi.md#editpdfsetmetadata) | **POST** /convert/edit/pdf/set-metadata | Sets PDF document metadata
*EditPdfApi* | [**editPdfSetPermissions**](docs/EditPdfApi.md#editpdfsetpermissions) | **POST** /convert/edit/pdf/encrypt/set-permissions | Encrypt, password-protect and set restricted permissions on a PDF
*EditPdfApi* | [**editPdfWatermarkText**](docs/EditPdfApi.md#editpdfwatermarktext) | **POST** /convert/edit/pdf/watermark/text | Add a text watermark to a PDF
*EditTextApi* | [**editTextBase64Decode**](docs/EditTextApi.md#edittextbase64decode) | **POST** /convert/edit/text/encoding/base64/decode | Base 64 decode, convert base 64 string to binary content
*EditTextApi* | [**editTextBase64Detect**](docs/EditTextApi.md#edittextbase64detect) | **POST** /convert/edit/text/encoding/base64/detect | Detect, check if text string is base 64 encoded
*EditTextApi* | [**editTextBase64Encode**](docs/EditTextApi.md#edittextbase64encode) | **POST** /convert/edit/text/encoding/base64/encode | Base 64 encode, convert binary or file data to a text string
*EditTextApi* | [**editTextChangeLineEndings**](docs/EditTextApi.md#edittextchangelineendings) | **POST** /convert/edit/text/line-endings/change | Set, change line endings of a text file
*EditTextApi* | [**editTextDetectLineEndings**](docs/EditTextApi.md#edittextdetectlineendings) | **POST** /convert/edit/text/line-endings/detect | Detect line endings of a text file
*EditTextApi* | [**editTextFindRegex**](docs/EditTextApi.md#edittextfindregex) | **POST** /convert/edit/text/find/regex | Find a regular expression regex in text input
*EditTextApi* | [**editTextFindSimple**](docs/EditTextApi.md#edittextfindsimple) | **POST** /convert/edit/text/find/string | Find a string in text input
*EditTextApi* | [**editTextRemoveAllWhitespace**](docs/EditTextApi.md#edittextremoveallwhitespace) | **POST** /convert/edit/text/remove/whitespace/all | Remove whitespace from text string
*EditTextApi* | [**editTextRemoveHtml**](docs/EditTextApi.md#edittextremovehtml) | **POST** /convert/edit/text/remove/html | Remove HTML from text string
*EditTextApi* | [**editTextReplaceRegex**](docs/EditTextApi.md#edittextreplaceregex) | **POST** /convert/edit/text/replace/regex | Replace a string in text with a regex regular expression string
*EditTextApi* | [**editTextReplaceSimple**](docs/EditTextApi.md#edittextreplacesimple) | **POST** /convert/edit/text/replace/string | Replace a string in text with another string value
*EditTextApi* | [**editTextTextEncodingDetect**](docs/EditTextApi.md#edittexttextencodingdetect) | **POST** /convert/edit/text/encoding/detect | Detect text encoding of file
*EditTextApi* | [**editTextTrimWhitespace**](docs/EditTextApi.md#edittexttrimwhitespace) | **POST** /convert/edit/text/remove/whitespace/trim | Trim leading and trailing whitespace from text string
*MergeDocumentApi* | [**mergeDocumentDocx**](docs/MergeDocumentApi.md#mergedocumentdocx) | **POST** /convert/merge/docx | Merge Two Word DOCX Together
*MergeDocumentApi* | [**mergeDocumentDocxMulti**](docs/MergeDocumentApi.md#mergedocumentdocxmulti) | **POST** /convert/merge/docx/multi | Merge Multple Word DOCX Together
*MergeDocumentApi* | [**mergeDocumentPdf**](docs/MergeDocumentApi.md#mergedocumentpdf) | **POST** /convert/merge/pdf | Merge Two PDF Files Together
*MergeDocumentApi* | [**mergeDocumentPdfMulti**](docs/MergeDocumentApi.md#mergedocumentpdfmulti) | **POST** /convert/merge/pdf/multi | Merge Multple PDF Files Together
*MergeDocumentApi* | [**mergeDocumentPng**](docs/MergeDocumentApi.md#mergedocumentpng) | **POST** /convert/merge/png/vertical | Merge Two PNG Files Together
*MergeDocumentApi* | [**mergeDocumentPngMulti**](docs/MergeDocumentApi.md#mergedocumentpngmulti) | **POST** /convert/merge/png/vertical/multi | Merge Multple PNG Files Together
*MergeDocumentApi* | [**mergeDocumentPptx**](docs/MergeDocumentApi.md#mergedocumentpptx) | **POST** /convert/merge/pptx | Merge Two PowerPoint PPTX Together
*MergeDocumentApi* | [**mergeDocumentPptxMulti**](docs/MergeDocumentApi.md#mergedocumentpptxmulti) | **POST** /convert/merge/pptx/multi | Merge Multple PowerPoint PPTX Together
*MergeDocumentApi* | [**mergeDocumentTxt**](docs/MergeDocumentApi.md#mergedocumenttxt) | **POST** /convert/merge/txt | Merge Two Text (TXT) Files Together
*MergeDocumentApi* | [**mergeDocumentTxtMulti**](docs/MergeDocumentApi.md#mergedocumenttxtmulti) | **POST** /convert/merge/txt/multi | Merge Multple Text (TXT) Files Together
*MergeDocumentApi* | [**mergeDocumentXlsx**](docs/MergeDocumentApi.md#mergedocumentxlsx) | **POST** /convert/merge/xlsx | Merge Two Excel XLSX Together
*MergeDocumentApi* | [**mergeDocumentXlsxMulti**](docs/MergeDocumentApi.md#mergedocumentxlsxmulti) | **POST** /convert/merge/xlsx/multi | Merge Multple Excel XLSX Together
*SplitDocumentApi* | [**splitDocumentDocx**](docs/SplitDocumentApi.md#splitdocumentdocx) | **POST** /convert/split/docx | Split a single Word Document DOCX into Separate Documents by Page
*SplitDocumentApi* | [**splitDocumentPdfByPage**](docs/SplitDocumentApi.md#splitdocumentpdfbypage) | **POST** /convert/split/pdf | Split a PDF file into separate PDF files, one per page
*SplitDocumentApi* | [**splitDocumentPptx**](docs/SplitDocumentApi.md#splitdocumentpptx) | **POST** /convert/split/pptx | Split a single PowerPoint Presentation PPTX into Separate Slides
*SplitDocumentApi* | [**splitDocumentTxtByLine**](docs/SplitDocumentApi.md#splitdocumenttxtbyline) | **POST** /convert/split/txt/by-line | Split a single Text file (txt) into lines
*SplitDocumentApi* | [**splitDocumentTxtByString**](docs/SplitDocumentApi.md#splitdocumenttxtbystring) | **POST** /convert/split/txt/by-string | Split a single Text file (txt) by a string delimiter
*SplitDocumentApi* | [**splitDocumentXlsx**](docs/SplitDocumentApi.md#splitdocumentxlsx) | **POST** /convert/split/xlsx | Split a single Excel XLSX into Separate Worksheets
*ValidateDocumentApi* | [**validateDocumentAutodetectValidation**](docs/ValidateDocumentApi.md#validatedocumentautodetectvalidation) | **POST** /convert/validate/autodetect | Autodetect content type and validate
*ValidateDocumentApi* | [**validateDocumentCsvValidation**](docs/ValidateDocumentApi.md#validatedocumentcsvvalidation) | **POST** /convert/validate/csv | Validate a CSV file document (CSV)
*ValidateDocumentApi* | [**validateDocumentDocxValidation**](docs/ValidateDocumentApi.md#validatedocumentdocxvalidation) | **POST** /convert/validate/docx | Validate a Word document (DOCX)
*ValidateDocumentApi* | [**validateDocumentEmlValidation**](docs/ValidateDocumentApi.md#validatedocumentemlvalidation) | **POST** /convert/validate/eml | Validate if an EML file is executable
*ValidateDocumentApi* | [**validateDocumentExecutableValidation**](docs/ValidateDocumentApi.md#validatedocumentexecutablevalidation) | **POST** /convert/validate/executable | Validate if a file is executable
*ValidateDocumentApi* | [**validateDocumentGZipValidation**](docs/ValidateDocumentApi.md#validatedocumentgzipvalidation) | **POST** /convert/validate/gzip | Validate a GZip Archive file (gzip or gz)
*ValidateDocumentApi* | [**validateDocumentJsonValidation**](docs/ValidateDocumentApi.md#validatedocumentjsonvalidation) | **POST** /convert/validate/json | Validate a JSON file
*ValidateDocumentApi* | [**validateDocumentMsgValidation**](docs/ValidateDocumentApi.md#validatedocumentmsgvalidation) | **POST** /convert/validate/msg | Validate if an MSG file is executable
*ValidateDocumentApi* | [**validateDocumentPdfValidation**](docs/ValidateDocumentApi.md#validatedocumentpdfvalidation) | **POST** /convert/validate/pdf | Validate a PDF document file
*ValidateDocumentApi* | [**validateDocumentPptxValidation**](docs/ValidateDocumentApi.md#validatedocumentpptxvalidation) | **POST** /convert/validate/pptx | Validate a PowerPoint presentation (PPTX)
*ValidateDocumentApi* | [**validateDocumentRarValidation**](docs/ValidateDocumentApi.md#validatedocumentrarvalidation) | **POST** /convert/validate/rar | Validate a RAR Archive file (RAR)
*ValidateDocumentApi* | [**validateDocumentTarValidation**](docs/ValidateDocumentApi.md#validatedocumenttarvalidation) | **POST** /convert/validate/tar | Validate a TAR Tarball Archive file (TAR)
*ValidateDocumentApi* | [**validateDocumentXlsxValidation**](docs/ValidateDocumentApi.md#validatedocumentxlsxvalidation) | **POST** /convert/validate/xlsx | Validate a Excel document (XLSX)
*ValidateDocumentApi* | [**validateDocumentXmlValidation**](docs/ValidateDocumentApi.md#validatedocumentxmlvalidation) | **POST** /convert/validate/xml | Validate an XML file
*ValidateDocumentApi* | [**validateDocumentZipValidation**](docs/ValidateDocumentApi.md#validatedocumentzipvalidation) | **POST** /convert/validate/zip | Validate a Zip Archive file (zip)
*ViewerToolsApi* | [**viewerToolsCreateSimple**](docs/ViewerToolsApi.md#viewertoolscreatesimple) | **POST** /convert/viewer/create/web/simple | Create a web-based viewer
*ZipArchiveApi* | [**zipArchiveZipCreate**](docs/ZipArchiveApi.md#ziparchivezipcreate) | **POST** /convert/archive/zip/create | Compress files to create a new zip archive
*ZipArchiveApi* | [**zipArchiveZipCreateAdvanced**](docs/ZipArchiveApi.md#ziparchivezipcreateadvanced) | **POST** /convert/archive/zip/create/advanced | Compress files and folders to create a new zip archive with advanced options
*ZipArchiveApi* | [**zipArchiveZipDecrypt**](docs/ZipArchiveApi.md#ziparchivezipdecrypt) | **POST** /convert/archive/zip/decrypt | Decrypt and remove password protection on a zip file
*ZipArchiveApi* | [**zipArchiveZipEncryptAdvanced**](docs/ZipArchiveApi.md#ziparchivezipencryptadvanced) | **POST** /convert/archive/zip/encrypt/advanced | Encrypt and password protect a zip file
*ZipArchiveApi* | [**zipArchiveZipExtract**](docs/ZipArchiveApi.md#ziparchivezipextract) | **POST** /convert/archive/zip/extract | Extract, decompress files and folders from a zip archive


## Documentation For Models

 - [AddPdfAnnotationRequest](docs/AddPdfAnnotationRequest.md)
 - [AlternateFileFormatCandidate](docs/AlternateFileFormatCandidate.md)
 - [AppendXlsxRowRequest](docs/AppendXlsxRowRequest.md)
 - [AppendXlsxRowResponse](docs/AppendXlsxRowResponse.md)
 - [AutodetectDocumentValidationResult](docs/AutodetectDocumentValidationResult.md)
 - [AutodetectGetInfoResult](docs/AutodetectGetInfoResult.md)
 - [AutodetectToJpgResult](docs/AutodetectToJpgResult.md)
 - [AutodetectToPngResult](docs/AutodetectToPngResult.md)
 - [AutodetectToThumbnailsResult](docs/AutodetectToThumbnailsResult.md)
 - [Base64DecodeRequest](docs/Base64DecodeRequest.md)
 - [Base64DecodeResponse](docs/Base64DecodeResponse.md)
 - [Base64DetectRequest](docs/Base64DetectRequest.md)
 - [Base64DetectResponse](docs/Base64DetectResponse.md)
 - [Base64EncodeRequest](docs/Base64EncodeRequest.md)
 - [Base64EncodeResponse](docs/Base64EncodeResponse.md)
 - [ChangeLineEndingResponse](docs/ChangeLineEndingResponse.md)
 - [ClearXlsxCellRequest](docs/ClearXlsxCellRequest.md)
 - [ClearXlsxCellResponse](docs/ClearXlsxCellResponse.md)
 - [ClearXlsxRowRequest](docs/ClearXlsxRowRequest.md)
 - [ClearXlsxRowResponse](docs/ClearXlsxRowResponse.md)
 - [ConvertedJpgPage](docs/ConvertedJpgPage.md)
 - [ConvertedPngPage](docs/ConvertedPngPage.md)
 - [CreateBlankDocxRequest](docs/CreateBlankDocxRequest.md)
 - [CreateBlankDocxResponse](docs/CreateBlankDocxResponse.md)
 - [CreateBlankSpreadsheetRequest](docs/CreateBlankSpreadsheetRequest.md)
 - [CreateBlankSpreadsheetResponse](docs/CreateBlankSpreadsheetResponse.md)
 - [CreateSpreadsheetFromDataRequest](docs/CreateSpreadsheetFromDataRequest.md)
 - [CreateSpreadsheetFromDataResponse](docs/CreateSpreadsheetFromDataResponse.md)
 - [CreateZipArchiveRequest](docs/CreateZipArchiveRequest.md)
 - [CsvCollection](docs/CsvCollection.md)
 - [CsvFileResult](docs/CsvFileResult.md)
 - [DeleteDocxTableRowRangeRequest](docs/DeleteDocxTableRowRangeRequest.md)
 - [DeleteDocxTableRowRangeResponse](docs/DeleteDocxTableRowRangeResponse.md)
 - [DeleteDocxTableRowRequest](docs/DeleteDocxTableRowRequest.md)
 - [DeleteDocxTableRowResponse](docs/DeleteDocxTableRowResponse.md)
 - [DetectLineEndingsResponse](docs/DetectLineEndingsResponse.md)
 - [DisableSharedWorkbookRequest](docs/DisableSharedWorkbookRequest.md)
 - [DisableSharedWorkbookResponse](docs/DisableSharedWorkbookResponse.md)
 - [DocumentValidationError](docs/DocumentValidationError.md)
 - [DocumentValidationResult](docs/DocumentValidationResult.md)
 - [DocxBody](docs/DocxBody.md)
 - [DocxCellStyle](docs/DocxCellStyle.md)
 - [DocxComment](docs/DocxComment.md)
 - [DocxFooter](docs/DocxFooter.md)
 - [DocxHeader](docs/DocxHeader.md)
 - [DocxImage](docs/DocxImage.md)
 - [DocxInsertCommentOnParagraphRequest](docs/DocxInsertCommentOnParagraphRequest.md)
 - [DocxInsertImageRequest](docs/DocxInsertImageRequest.md)
 - [DocxInsertImageResponse](docs/DocxInsertImageResponse.md)
 - [DocxPage](docs/DocxPage.md)
 - [DocxParagraph](docs/DocxParagraph.md)
 - [DocxRemoveObjectRequest](docs/DocxRemoveObjectRequest.md)
 - [DocxRemoveObjectResponse](docs/DocxRemoveObjectResponse.md)
 - [DocxRun](docs/DocxRun.md)
 - [DocxSection](docs/DocxSection.md)
 - [DocxSetFooterAddPageNumberRequest](docs/DocxSetFooterAddPageNumberRequest.md)
 - [DocxSetFooterRequest](docs/DocxSetFooterRequest.md)
 - [DocxSetFooterResponse](docs/DocxSetFooterResponse.md)
 - [DocxSetHeaderRequest](docs/DocxSetHeaderRequest.md)
 - [DocxSetHeaderResponse](docs/DocxSetHeaderResponse.md)
 - [DocxStyle](docs/DocxStyle.md)
 - [DocxTable](docs/DocxTable.md)
 - [DocxTableCell](docs/DocxTableCell.md)
 - [DocxTableRow](docs/DocxTableRow.md)
 - [DocxTemplateApplicationRequest](docs/DocxTemplateApplicationRequest.md)
 - [DocxTemplateOperation](docs/DocxTemplateOperation.md)
 - [DocxText](docs/DocxText.md)
 - [DocxToJpgResult](docs/DocxToJpgResult.md)
 - [DocxToPngResult](docs/DocxToPngResult.md)
 - [DocxTopLevelComment](docs/DocxTopLevelComment.md)
 - [EmlAttachment](docs/EmlAttachment.md)
 - [EmlToHtmlResult](docs/EmlToHtmlResult.md)
 - [EmlToJpgResult](docs/EmlToJpgResult.md)
 - [EmlToPngResult](docs/EmlToPngResult.md)
 - [EnableSharedWorkbookRequest](docs/EnableSharedWorkbookRequest.md)
 - [EnableSharedWorkbookResponse](docs/EnableSharedWorkbookResponse.md)
 - [ExifValue](docs/ExifValue.md)
 - [FindDocxParagraphRequest](docs/FindDocxParagraphRequest.md)
 - [FindDocxParagraphResponse](docs/FindDocxParagraphResponse.md)
 - [FindRegexMatch](docs/FindRegexMatch.md)
 - [FindStringMatch](docs/FindStringMatch.md)
 - [FindStringRegexRequest](docs/FindStringRegexRequest.md)
 - [FindStringRegexResponse](docs/FindStringRegexResponse.md)
 - [FindStringSimpleRequest](docs/FindStringSimpleRequest.md)
 - [FindStringSimpleResponse](docs/FindStringSimpleResponse.md)
 - [FinishEditingRequest](docs/FinishEditingRequest.md)
 - [GetDocxBodyRequest](docs/GetDocxBodyRequest.md)
 - [GetDocxBodyResponse](docs/GetDocxBodyResponse.md)
 - [GetDocxCommentsHierarchicalResponse](docs/GetDocxCommentsHierarchicalResponse.md)
 - [GetDocxCommentsResponse](docs/GetDocxCommentsResponse.md)
 - [GetDocxGetCommentsHierarchicalRequest](docs/GetDocxGetCommentsHierarchicalRequest.md)
 - [GetDocxGetCommentsRequest](docs/GetDocxGetCommentsRequest.md)
 - [GetDocxHeadersAndFootersRequest](docs/GetDocxHeadersAndFootersRequest.md)
 - [GetDocxHeadersAndFootersResponse](docs/GetDocxHeadersAndFootersResponse.md)
 - [GetDocxImagesRequest](docs/GetDocxImagesRequest.md)
 - [GetDocxImagesResponse](docs/GetDocxImagesResponse.md)
 - [GetDocxPagesRequest](docs/GetDocxPagesRequest.md)
 - [GetDocxPagesResponse](docs/GetDocxPagesResponse.md)
 - [GetDocxSectionsRequest](docs/GetDocxSectionsRequest.md)
 - [GetDocxSectionsResponse](docs/GetDocxSectionsResponse.md)
 - [GetDocxStylesRequest](docs/GetDocxStylesRequest.md)
 - [GetDocxStylesResponse](docs/GetDocxStylesResponse.md)
 - [GetDocxTableByIndexRequest](docs/GetDocxTableByIndexRequest.md)
 - [GetDocxTableByIndexResponse](docs/GetDocxTableByIndexResponse.md)
 - [GetDocxTableRowRequest](docs/GetDocxTableRowRequest.md)
 - [GetDocxTableRowResponse](docs/GetDocxTableRowResponse.md)
 - [GetDocxTablesRequest](docs/GetDocxTablesRequest.md)
 - [GetDocxTablesResponse](docs/GetDocxTablesResponse.md)
 - [GetFileTypeIconResult](docs/GetFileTypeIconResult.md)
 - [GetImageInfoResult](docs/GetImageInfoResult.md)
 - [GetPdfAnnotationsResult](docs/GetPdfAnnotationsResult.md)
 - [GetXlsxCellByIdentifierRequest](docs/GetXlsxCellByIdentifierRequest.md)
 - [GetXlsxCellByIdentifierResponse](docs/GetXlsxCellByIdentifierResponse.md)
 - [GetXlsxCellRequest](docs/GetXlsxCellRequest.md)
 - [GetXlsxCellResponse](docs/GetXlsxCellResponse.md)
 - [GetXlsxColumnsRequest](docs/GetXlsxColumnsRequest.md)
 - [GetXlsxColumnsResponse](docs/GetXlsxColumnsResponse.md)
 - [GetXlsxImagesRequest](docs/GetXlsxImagesRequest.md)
 - [GetXlsxImagesResponse](docs/GetXlsxImagesResponse.md)
 - [GetXlsxRowsAndCellsRequest](docs/GetXlsxRowsAndCellsRequest.md)
 - [GetXlsxRowsAndCellsResponse](docs/GetXlsxRowsAndCellsResponse.md)
 - [GetXlsxSpecificRowRequest](docs/GetXlsxSpecificRowRequest.md)
 - [GetXlsxSpecificRowResponse](docs/GetXlsxSpecificRowResponse.md)
 - [GetXlsxStylesRequest](docs/GetXlsxStylesRequest.md)
 - [GetXlsxStylesResponse](docs/GetXlsxStylesResponse.md)
 - [GetXlsxWorksheetsRequest](docs/GetXlsxWorksheetsRequest.md)
 - [GetXlsxWorksheetsResponse](docs/GetXlsxWorksheetsResponse.md)
 - [HtmlMdResult](docs/HtmlMdResult.md)
 - [HtmlTemplateApplicationRequest](docs/HtmlTemplateApplicationRequest.md)
 - [HtmlTemplateApplicationResponse](docs/HtmlTemplateApplicationResponse.md)
 - [HtmlTemplateOperation](docs/HtmlTemplateOperation.md)
 - [HtmlToOfficeRequest](docs/HtmlToOfficeRequest.md)
 - [HtmlToPdfRequest](docs/HtmlToPdfRequest.md)
 - [HtmlToPngRequest](docs/HtmlToPngRequest.md)
 - [HtmlToTextRequest](docs/HtmlToTextRequest.md)
 - [HtmlToTextResponse](docs/HtmlToTextResponse.md)
 - [InsertDocxCommentOnParagraphResponse](docs/InsertDocxCommentOnParagraphResponse.md)
 - [InsertDocxInsertParagraphRequest](docs/InsertDocxInsertParagraphRequest.md)
 - [InsertDocxInsertParagraphResponse](docs/InsertDocxInsertParagraphResponse.md)
 - [InsertDocxTableRowRequest](docs/InsertDocxTableRowRequest.md)
 - [InsertDocxTableRowResponse](docs/InsertDocxTableRowResponse.md)
 - [InsertDocxTablesRequest](docs/InsertDocxTablesRequest.md)
 - [InsertDocxTablesResponse](docs/InsertDocxTablesResponse.md)
 - [InsertXlsxWorksheetRequest](docs/InsertXlsxWorksheetRequest.md)
 - [InsertXlsxWorksheetResponse](docs/InsertXlsxWorksheetResponse.md)
 - [KeynoteToJpgResult](docs/KeynoteToJpgResult.md)
 - [KeynoteToPngResult](docs/KeynoteToPngResult.md)
 - [MsgAttachment](docs/MsgAttachment.md)
 - [MsgToHtmlResult](docs/MsgToHtmlResult.md)
 - [MsgToJpgResult](docs/MsgToJpgResult.md)
 - [MsgToPngResult](docs/MsgToPngResult.md)
 - [MultipageImageFormatConversionResult](docs/MultipageImageFormatConversionResult.md)
 - [OdpToJpgResult](docs/OdpToJpgResult.md)
 - [OdpToPngResult](docs/OdpToPngResult.md)
 - [OdsToJpgResult](docs/OdsToJpgResult.md)
 - [OdsToPngResult](docs/OdsToPngResult.md)
 - [OdtToJpgResult](docs/OdtToJpgResult.md)
 - [OdtToPngResult](docs/OdtToPngResult.md)
 - [PageConversionResult](docs/PageConversionResult.md)
 - [PdfAnnotation](docs/PdfAnnotation.md)
 - [PdfDocument](docs/PdfDocument.md)
 - [PdfFormField](docs/PdfFormField.md)
 - [PdfFormFields](docs/PdfFormFields.md)
 - [PdfMetadata](docs/PdfMetadata.md)
 - [PdfPageText](docs/PdfPageText.md)
 - [PdfTextByPageResult](docs/PdfTextByPageResult.md)
 - [PdfToJpgResult](docs/PdfToJpgResult.md)
 - [PdfToPngResult](docs/PdfToPngResult.md)
 - [PptxToPngResult](docs/PptxToPngResult.md)
 - [PresentationResult](docs/PresentationResult.md)
 - [RemoveDocxHeadersAndFootersRequest](docs/RemoveDocxHeadersAndFootersRequest.md)
 - [RemoveDocxHeadersAndFootersResponse](docs/RemoveDocxHeadersAndFootersResponse.md)
 - [RemoveDocxPagesRequest](docs/RemoveDocxPagesRequest.md)
 - [RemoveHtmlFromTextRequest](docs/RemoveHtmlFromTextRequest.md)
 - [RemoveHtmlFromTextResponse](docs/RemoveHtmlFromTextResponse.md)
 - [RemovePptxSlidesRequest](docs/RemovePptxSlidesRequest.md)
 - [RemoveWhitespaceFromTextRequest](docs/RemoveWhitespaceFromTextRequest.md)
 - [RemoveWhitespaceFromTextResponse](docs/RemoveWhitespaceFromTextResponse.md)
 - [RemoveXlsxWorksheetRequest](docs/RemoveXlsxWorksheetRequest.md)
 - [RenameXlsxWorksheetRequest](docs/RenameXlsxWorksheetRequest.md)
 - [RenameXlsxWorksheetResponse](docs/RenameXlsxWorksheetResponse.md)
 - [ReplaceDocxParagraphRequest](docs/ReplaceDocxParagraphRequest.md)
 - [ReplaceDocxParagraphResponse](docs/ReplaceDocxParagraphResponse.md)
 - [ReplaceStringRegexRequest](docs/ReplaceStringRegexRequest.md)
 - [ReplaceStringRegexResponse](docs/ReplaceStringRegexResponse.md)
 - [ReplaceStringRequest](docs/ReplaceStringRequest.md)
 - [ReplaceStringSimpleRequest](docs/ReplaceStringSimpleRequest.md)
 - [ReplaceStringSimpleResponse](docs/ReplaceStringSimpleResponse.md)
 - [RtfToJpgResult](docs/RtfToJpgResult.md)
 - [RtfToPngResult](docs/RtfToPngResult.md)
 - [ScreenshotRequest](docs/ScreenshotRequest.md)
 - [SetFormFieldValue](docs/SetFormFieldValue.md)
 - [SetPdfFormFieldsRequest](docs/SetPdfFormFieldsRequest.md)
 - [SetPdfMetadataRequest](docs/SetPdfMetadataRequest.md)
 - [SetXlsxCellByIdentifierRequest](docs/SetXlsxCellByIdentifierRequest.md)
 - [SetXlsxCellByIdentifierResponse](docs/SetXlsxCellByIdentifierResponse.md)
 - [SetXlsxCellRequest](docs/SetXlsxCellRequest.md)
 - [SetXlsxCellResponse](docs/SetXlsxCellResponse.md)
 - [SplitDocumentResult](docs/SplitDocumentResult.md)
 - [SplitDocxDocumentResult](docs/SplitDocxDocumentResult.md)
 - [SplitPdfResult](docs/SplitPdfResult.md)
 - [SplitPptxPresentationResult](docs/SplitPptxPresentationResult.md)
 - [SplitTextDocumentByLinesResult](docs/SplitTextDocumentByLinesResult.md)
 - [SplitTextDocumentByStringResult](docs/SplitTextDocumentByStringResult.md)
 - [SplitXlsxWorksheetResult](docs/SplitXlsxWorksheetResult.md)
 - [TextConversionResult](docs/TextConversionResult.md)
 - [TextDocumentElement](docs/TextDocumentElement.md)
 - [TextDocumentLine](docs/TextDocumentLine.md)
 - [TextEncodingDetectResponse](docs/TextEncodingDetectResponse.md)
 - [Thumbnail](docs/Thumbnail.md)
 - [UpdateDocxTableCellRequest](docs/UpdateDocxTableCellRequest.md)
 - [UpdateDocxTableCellResponse](docs/UpdateDocxTableCellResponse.md)
 - [UpdateDocxTableRowRequest](docs/UpdateDocxTableRowRequest.md)
 - [UpdateDocxTableRowResponse](docs/UpdateDocxTableRowResponse.md)
 - [UrlToPdfRequest](docs/UrlToPdfRequest.md)
 - [UrlToTextRequest](docs/UrlToTextRequest.md)
 - [UrlToTextResponse](docs/UrlToTextResponse.md)
 - [ViewerResponse](docs/ViewerResponse.md)
 - [WorksheetResult](docs/WorksheetResult.md)
 - [XlsxImage](docs/XlsxImage.md)
 - [XlsxSpreadsheetCell](docs/XlsxSpreadsheetCell.md)
 - [XlsxSpreadsheetColumn](docs/XlsxSpreadsheetColumn.md)
 - [XlsxSpreadsheetRow](docs/XlsxSpreadsheetRow.md)
 - [XlsxToPngResult](docs/XlsxToPngResult.md)
 - [XlsxWorksheet](docs/XlsxWorksheet.md)
 - [XmlAddAttributeWithXPathResult](docs/XmlAddAttributeWithXPathResult.md)
 - [XmlAddChildWithXPathResult](docs/XmlAddChildWithXPathResult.md)
 - [XmlFilterWithXPathResult](docs/XmlFilterWithXPathResult.md)
 - [XmlQueryWithXQueryMultiResult](docs/XmlQueryWithXQueryMultiResult.md)
 - [XmlQueryWithXQueryResult](docs/XmlQueryWithXQueryResult.md)
 - [XmlRemoveAllChildrenWithXPathResult](docs/XmlRemoveAllChildrenWithXPathResult.md)
 - [XmlRemoveWithXPathResult](docs/XmlRemoveWithXPathResult.md)
 - [XmlReplaceWithXPathResult](docs/XmlReplaceWithXPathResult.md)
 - [XmlSetValueWithXPathResult](docs/XmlSetValueWithXPathResult.md)
 - [ZipDirectory](docs/ZipDirectory.md)
 - [ZipEncryptionAdvancedRequest](docs/ZipEncryptionAdvancedRequest.md)
 - [ZipExtractResponse](docs/ZipExtractResponse.md)
 - [ZipFile](docs/ZipFile.md)


## Documentation For Authorization


## Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header

