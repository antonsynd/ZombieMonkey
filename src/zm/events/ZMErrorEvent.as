
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
	 * Contains an error encountered by the ZombieMonkey engine.
	 */
	public class ZMErrorEvent extends Event
	{
		
		//----------------------------------------------------------------------
		//  
		//  Fields
		//  
		//----------------------------------------------------------------------
		
		/**
		 * Defines the value of the type property of a ZMErrorEvent object.
		 */
		public static const RUNTIME_ERROR:String = "runtimeError";
		
		private var _error:Error;
		private var _errorID:int;
		private var _message:String;
		private var _name:String;
		
		//----------------------------------------------------------------------
		//  
		//  Constructor Method
		//  
		//----------------------------------------------------------------------
		
		/**
		 * Constructs an ZMErrorEvent.
		 * 
		 * @param error An error object that is represented by the event object.
		 */
		public function ZMErrorEvent(error:Error)
		{
			super(RUNTIME_ERROR, false, false);
			
			_error = error;
			_errorID = error.errorID;
			_message = error.message;
			_name = error.name;
		}
		
		//----------------------------------------------------------------------
		//  
		//  Properties
		//  
		//----------------------------------------------------------------------
		
		//------------------------------
		//  error
		//------------------------------
		
		/**
		 * Contains the error object associated with the error event.
		 */
		public function get error():Error
		{
			return _error;
		}
		
		//------------------------------
		//  errorID
		//------------------------------
		
		/**
		 * Contains the reference number associated with the specific error message.
		 */
		public function get errorID():int
		{
			return _errorID;
		}
		
		/**
		 * @private
		 */
		private function set errorID(value:int):void
		{
			_errorID = value;
		}
		
		//------------------------------
		//  message
		//------------------------------
		
		/**
		 * Contains the message associated with the Error object.
		 */
		public function get message():String
		{
			return _message;
		}
		
		/**
		 * @private
		 */
		private function set message(value:String):void
		{
			_message = value;
		}
		
		//------------------------------
		//  name
		//------------------------------
		
		/**
		 * Contains the name of the Error object.
		 */
		public function get name():String
		{
			return _name;
		}
		
		/**
		 * @private
		 */
		private function set name(value:String):void
		{
			_name = value;
		}
		
		//----------------------------------------------------------------------
		//  
		//  Methods
		//  
		//----------------------------------------------------------------------
		
		override public function clone():Event
		{
			return new ZMErrorEvent(error);
		}
		
		override public function toString():String
		{
			return "[" + getQualifiedClassName(this) + " type=" + type + " error=" + error + "]";
		}
	}
}