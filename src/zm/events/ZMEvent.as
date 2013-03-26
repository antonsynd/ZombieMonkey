
//------------------------------------------------------------------------------
//  
//  Package
//  
//------------------------------------------------------------------------------

package zm.events
{
	
	//--------------------------------------------------------------------------
	//  
	//  Imports
	//  
	//--------------------------------------------------------------------------
	
	import flash.events.Event;
	import flash.utils.getQualifiedClassName;
	
	//--------------------------------------------------------------------------
	//  
	//  Class
	//  
	//--------------------------------------------------------------------------
	
	/**
	 * 
	 */
	public class ZMEvent extends Event
	{
		
		//----------------------------------------------------------------------
		//  
		//  Fields
		//  
		//----------------------------------------------------------------------
		
		/**
		 * Defines the value of the type property of a ZMEvent object.
		 */
		public static const SCRIPT_ENTER:String = "scriptEnter";
		
		public static const SCRIPT_EXIT:String = "scriptExit";
		
		//----------------------------------------------------------------------
		//  
		//  Constructor Method
		//  
		//----------------------------------------------------------------------
		
		/**
		 * Constructs an ZMEvent.
		 * 
		 * @param type
		 */
		public function ZMEvent(type:String)
		{
			super(type, false, false);
		}
		
		//----------------------------------------------------------------------
		//  
		//  Properties
		//  
		//----------------------------------------------------------------------
		
		//----------------------------------------------------------------------
		//  
		//  Methods
		//  
		//----------------------------------------------------------------------
		
		override public function clone():Event
		{
			return new ZMEvent(type);
		}
		
		override public function toString():String
		{
			return "[" + getQualifiedClassName(this) + " type=" + type + "]";
		}
	}
}