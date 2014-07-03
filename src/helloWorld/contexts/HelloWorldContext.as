package helloWorld.contexts
{
	import flash.display.DisplayObject;
	
	import core.appEx.core.contexts.IInspectableContext;
	import core.appEx.core.contexts.IVisualContext;
	import core.data.ArrayCollection;
	
	import helloWorld.entities.ExampleObject;
	import helloWorld.ui.views.HelloWorldView;
	
	public class HelloWorldContext implements IVisualContext, IInspectableContext
	{
		private var _view       :HelloWorldView;
		private var _selection  :ArrayCollection;
		
		public function HelloWorldContext()
		{
			_view = new HelloWorldView();
			
			_selection = new ArrayCollection();
			_selection.addItem( new ExampleObject() );
		}
		
		public function get view():DisplayObject
		{
			return _view;
		}
		
		public function dispose():void
		{
			
		}
		
		public function get selection():ArrayCollection { return _selection; }
	}
}