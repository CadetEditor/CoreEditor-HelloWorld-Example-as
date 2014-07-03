package helloWorld.entities
{
	public class ExampleObject
	{
		[Inspectable]
		public var propertyA    :String = "This is property A";
		[Inspectable]
		public var propertyB    :Number = 12345;
		[Inspectable ( editor="ColorPicker" )]
		public var propertyC    :uint = 0xFFFFFF;
		[Inspectable]
		public var propertyD    :Boolean = false;
		
		public function ExampleObject ()
		{
			
		}
	}
}