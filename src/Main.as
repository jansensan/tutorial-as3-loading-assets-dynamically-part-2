package
{
	// + ----------------------------------------
	//		[ IMPORTS ]
	// + ----------------------------------------
	
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	
	
	/**
	 * <p>Class description goes here</p>
	 * @author Mat Janson Blanchet
	 */
	public class Main extends Sprite
	{
		// + ----------------------------------------
		//		[ CONSTANTS ]
		// + ----------------------------------------
		
		// states
		
		
		// events
		
		
		// private
		
		
		// static
		
		
		// + ----------------------------------------
		//		[ VARIABLES ]
		// + ----------------------------------------
		
		// display objects
		
		
		// public
		
		
		// private / protected
		private	var	_loader	:Loader;
		
		
		// static
		
		
		// + ----------------------------------------
		//		[ GETTERS / SETTERS ]
		// + ----------------------------------------
		
		
		
		
		// + ----------------------------------------
		//		[CONSTRUCTOR ]
		// + ----------------------------------------
		
		public function Main()
		{
			var loaderContext:LoaderContext = new LoaderContext(false, ApplicationDomain.currentDomain);
			
			_loader = new Loader();
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loaderCompleteHandler);
			_loader.load(new URLRequest("../assets/swf/authoringAssets.swf"), loaderContext);
		}
		
		
		// + ----------------------------------------
		//		[ PUBLIC METHODS ]
		// + ----------------------------------------
		
		
		
		
		// + ----------------------------------------
		//		[ PRIVATE/PROTECTED METHODS ]
		// + ----------------------------------------
		
		
		
		
		// + ----------------------------------------
		//		[ EVENT HANDLERS ]
		// + ----------------------------------------
		
		private function loaderCompleteHandler(event:Event):void
		{
			var whiteSquare:WhiteSquare = new WhiteSquare();
			
			var blackSquare:BlackSquare = new BlackSquare();
			blackSquare.x = 32;
			
			addChild(whiteSquare);
			addChild(blackSquare);
		}
	
	
	}
}