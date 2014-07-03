package 
{
	import flash.display.Sprite;
	
	import core.app.CoreApp;
	import core.app.resources.FactoryResource;
	import core.appEx.resources.CommandHandlerFactory;
	import core.editor.CoreEditor;
	import core.editor.resources.ActionFactory;
	
	import helloWorld.commandHandlers.MyCommandHandler;
	import helloWorld.contexts.HelloWorldContext;
	import helloWorld.entities.Commands;
	
	public class HelloWorldExtension extends Sprite
	{
		public function HelloWorldExtension()
		{
			CoreApp.resourceManager.addResource( new FactoryResource( HelloWorldContext, "Hello World" ) );
			CoreApp.resourceManager.addResource( new ActionFactory( HelloWorldContext, Commands.MY_COMMAND, "My Action", "myActions" ) );
			CoreApp.resourceManager.addResource( new CommandHandlerFactory( Commands.MY_COMMAND, MyCommandHandler ) );
			
			//CoreEditor.commandManager.executeCommand(Commands.MY_COMMAND);
		}
	}
}