package 
{
	import flash.display.Sprite;
	
	import core.app.CoreApp;
	import core.app.resources.FactoryResource;
	
	import helloWorld.contexts.HelloWorldContext;
	
	public class HelloWorldExtension extends Sprite
	{
		public function HelloWorldExtension()
		{
			CoreApp.resourceManager.addResource( new FactoryResource( HelloWorldContext, "Hello World" ) );
		}
	}
}