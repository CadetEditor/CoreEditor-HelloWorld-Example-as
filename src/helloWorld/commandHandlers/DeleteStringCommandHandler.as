package helloWorld.commandHandlers
{
	import core.app.operations.ChangePropertyOperation;
	import core.app.operations.RemoveItemOperation;
	import core.app.operations.UndoableCompoundOperation;
	import core.appEx.core.commandHandlers.ICommandHandler;
	import core.editor.CoreEditor;
	
	import helloWorld.contexts.StringListContext;
	
	public class DeleteStringCommandHandler implements ICommandHandler
	{
		public function DeleteStringCommandHandler()
		{
		}
		
		public function execute(parameters:Object):void
		{
			// Grab a reference to the Context we're interested in
			var context:StringListContext = CoreEditor.contextManager.getLatestContextOfType(StringListContext);
			
			// Because we could be deleting multiple items, it's worth creating a CompoundOperation.
			// Even though we add each individual 'RemoveItemOperation' to this compound, removing
			// all these items will be seen as a single Operation, and so calling the UNDO Command
			// will add all the items back in one go.
			var compoundOperation:UndoableCompoundOperation = new UndoableCompoundOperation();
			compoundOperation.label = "Delete Item(s)";
			
			var selectedItems:Array = context.selection.source;
			for each ( var item:String in selectedItems )
			{
				var removeItemOperation:RemoveItemOperation = new RemoveItemOperation( item, context.dataProvider );
				compoundOperation.addOperation(removeItemOperation);
			}
			
			// Even though we have removed the items from the dataProvider, the Context's selection still contains them.
			// We need to make sure that the Context's selection is set to [].
			var clearSelectionOperation:ChangePropertyOperation = new ChangePropertyOperation( context.selection, "source", [] );
			compoundOperation.addOperation(clearSelectionOperation);
			
			context.operationManager.addOperation(compoundOperation);
		}
	}
}