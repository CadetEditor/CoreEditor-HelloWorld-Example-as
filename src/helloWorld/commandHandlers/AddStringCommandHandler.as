package helloWorld.commandHandlers
{
	import core.app.operations.AddItemOperation;
	import core.appEx.core.commandHandlers.ICommandHandler;
	import core.editor.CoreEditor;
	
	import helloWorld.contexts.StringListContext;
	
	public class AddStringCommandHandler implements ICommandHandler
	{
		public function AddStringCommandHandler()
		{
		}
		
		public function execute(parameters:Object):void
		{
			var context:StringListContext = CoreEditor.contextManager.getLatestContextOfType(StringListContext);
			
			var item:String = "Item " + (context.dataProvider.length+1);
			var addItemOperation:AddItemOperation = new AddItemOperation( item, context.dataProvider );
			context.operationManager.addOperation(addItemOperation);
		}
	}
}