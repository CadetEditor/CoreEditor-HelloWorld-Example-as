package helloWorld.contexts
{
	import flash.display.DisplayObject;
	
	import core.appEx.core.contexts.IOperationManagerContext;
	import core.appEx.core.contexts.IVisualContext;
	import core.appEx.managers.OperationManager;
	import core.data.ArrayCollection;
	
	import helloWorld.ui.views.StringListView;
	
	public class StringListContext implements IVisualContext, IOperationManagerContext
	{
		private var _view       :StringListView;
		
		private var _dataProvider   :ArrayCollection;
		
		private var _operationManager   :OperationManager;
		
		public function StringListContext()
		{
			_view = new StringListView();
			
			_dataProvider = new ArrayCollection();
			_view.dataProvider = _dataProvider;
			
			_operationManager = new OperationManager();
		}
		
		public function get view():DisplayObject
		{
			return _view;
		}
		
		public function dispose():void
		{
			_operationManager.dispose();
		}
		
		public function get dataProvider():ArrayCollection { return _dataProvider; }
		
		public function get operationManager():OperationManager { return _operationManager; }
	}
}