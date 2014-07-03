package 
{
	import flash.display.Sprite;
	
	import core.app.CoreApp;
	import core.app.resources.FactoryResource;
	import core.appEx.resources.CommandHandlerFactory;
	import core.editor.core.IGlobalViewContainer;
	import core.editor.icons.CoreEditorIcons;
	import core.editor.resources.ActionFactory;
	
	import helloWorld.commandHandlers.MyCommandHandler;
	import helloWorld.contexts.HelloWorldContext;
	import helloWorld.entities.Commands;
	
	public class HelloWorldExtension extends Sprite
	{
		public function HelloWorldExtension()
		{
			CoreApp.resourceManager.addResource( new FactoryResource( HelloWorldContext, "Hello World" ) );
			CoreApp.resourceManager.addResource( new ActionFactory( IGlobalViewContainer, Commands.MY_COMMAND, "My Action", "myActions", "Actions/myActions", CoreEditorIcons.Resource ) );
			CoreApp.resourceManager.addResource( new CommandHandlerFactory( Commands.MY_COMMAND, MyCommandHandler ) );
		}
	}
}