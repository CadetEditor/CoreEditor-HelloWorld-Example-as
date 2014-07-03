package helloWorld.contexts
{
	import helloWorld.ui.views.HelloWorldView;
	import flash.display.DisplayObject;
	
	import core.appEx.core.contexts.ISelectionContext;
	import core.appEx.core.contexts.IVisualContext;
	import core.appEx.events.ContextSelectionValidatorEvent;
	import core.appEx.validators.ContextSelectionValidator;
	import core.editor.CoreEditor;
	
	public class HelloWorldContext implements IVisualContext
	{
		private var _view       :HelloWorldView;
		private var contextSelectionValidator   :ContextSelectionValidator;
		
		public function HelloWorldContext()
		{
			_view = new HelloWorldView();
			_view.text = "Hello World";
			
			contextSelectionValidator = new ContextSelectionValidator(CoreEditor.contextManager, ISelectionContext, String);
			contextSelectionValidator.addEventListener(ContextSelectionValidatorEvent.VALID_SELECTION_CHANGED, selectionChangeHandler);
		}
		
		public function get view():DisplayObject
		{
			return _view;
		}
		
		public function dispose():void
		{
			contextSelectionValidator.removeEventListener(ContextSelectionValidatorEvent.VALID_SELECTION_CHANGED, selectionChangeHandler);
			contextSelectionValidator.dispose();
		}
		
		private function selectionChangeHandler(event:ContextSelectionValidatorEvent):void
		{
			_view.text = "";
			
			var selection:Array = contextSelectionValidator.getValidSelection();
			for ( var i:int = 0; i < selection.length; i++ )
			{
				var item:String = selection[i];
				_view.text += item + "\n";
			}
		}       
	}
}