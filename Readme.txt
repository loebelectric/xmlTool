A simple package used for casting XML to structs and JSON.


/******************************************************************************
*******************************   INSTALLATION   ******************************
*******************************************************************************/

box install xmlTool


/******************************************************************************
*******************************   USER GUIDE   ********************************
*******************************************************************************/

Here are xmlTool's functions:

struct function convertXMLtoStruct(required xml)

This function converts an XML coldfusion object into a struct by extracting the text
and child tags from any given tag and nesting each pair inside of a struct together.


-string function convertXMLtoJSON(required xml)

This function uses convertXMLtoStruct and then simply uses the serializeJSON()
function to return a JSON formatted string of the original XML document


any function convertJSONtoXML(required string json)

This function uses Coldbox's deserializeJSON function to make a struct, and then
passes that given struct into Coldbox's XmlConverter to make an XML document object.


