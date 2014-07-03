package helloWorld.contexts
{
	import helloWorld.ui.views.HelloWorldView;
	import flash.display.DisplayObject;
	import core.appEx.core.contexts.IVisualContext;
	
	public class HelloWorldContext implements IVisualContext
	{
		private var _view       :HelloWorldView;
		
		public function HelloWorldContext()
		{
			_view = new HelloWorldView();
			_view.text = "Hello World";
		}
		
		public function get view():DisplayObject
		{
			return _view;
		}
		
		public function dispose():void
		{
			
		}
	}
}