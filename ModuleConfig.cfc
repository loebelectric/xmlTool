component
{
    //Module Properties
    this.title          = "xmlTool";
    this.author         = "Jeff Stevens";
    this.description    = "Convert XML to structs and more!";
    this.modelNamespace = "xmlTool";
    this.cfmapping      = "xmlTool";

    /**
	 * Module Config
	 */
	function configure(){ 
	}

    function onLoad(){
        binder.map( "xmlTool@formatter" )
          .to( "#moduleMapping#.models.formatter" )
          .asSingleton()
        binder.mapDirectory(
          packagePath = "#moduleMapping.replace('/','.', 'all').listChangeDelims('.','.')#",
          namespace = "@formatter"
          );
      }
}
