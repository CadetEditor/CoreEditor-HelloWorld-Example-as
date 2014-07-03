package helloWorld.contexts
{
	import flash.display.DisplayObject;
	
	import core.appEx.core.contexts.IVisualContext;
	import core.data.ArrayCollection;
	
	import helloWorld.ui.views.StringListView;
	
	public class StringListContext implements IVisualContext
	{
		private var _view       :StringListView;
		
		private var _dataProvider   :ArrayCollection;
		
		public function StringListContext()
		{
			_view = new StringListView();
			
			_dataProvider = new ArrayCollection();
			_dataProvider.addItem( "Item 1" );
			_dataProvider.addItem( "Item 2" );
			_dataProvider.addItem( "Item 3" );
			
			_view.dataProvider = _dataProvider;
		}
		
		public function get view():DisplayObject
		{
			return _view;
		}
		
		public function dispose():void
		{
			
		}
		
		public function get dataProvider():ArrayCollection { return _dataProvider; }
	}
}