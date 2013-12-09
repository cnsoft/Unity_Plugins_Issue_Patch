package  {
	
	import flash.display.MovieClip;
	//import scaleform.clik.events.ButtonEvent;
	import flash.events.MouseEvent;
	import flash.events.TouchEvent;
	import flash.events.Event;
	
	//
	import scaleform.clik.events.ButtonEvent;	
	import scaleform.gfx.Extensions;
	
	import flash.ui.Multitouch;
    import flash.ui.MultitouchInputMode;
	
	import flash.external.ExternalInterface;
	
	public class SFButtons extends MovieClip {
		
		//call externalinterface .call
		public var c1,c2:int;
		public function SFButtons() {
			
			Extensions.enabled = true; 
			
			Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
			// constructor code
			//btn1.addEventListener(Button.CLICK, onBtnClick1);
			//btn1.addEventListener(ButtonEvent.CLICK,onBtnClick1);
			btn1.addEventListener(TouchEvent.TOUCH_BEGIN,onBtnClick1);
			
			btn2.addEventListener(ButtonEvent.CLICK,onBtnClick2);
			//btn2.addEventListener(TouchEvent.TOUCH_BEGIN,onBtnClick20);
			//btn2.addEventListener(TouchEvent.TOUCH_END,onBtnClick21);
			//
			c1 = c2 =0;
			
		}
		
		public function onBtnClick1(e:Event)
		{
			trace('btn1 clicked');		
			c1+=1;
			t1.text = ""+ c1;
		}
		public function onBtnClick2(e:Event)
		{
			trace('btn2 clicked');		
			c2+=1;
			t2.text = ""+ c2;
		}
		public function onBtnClick20(e:Event)
		{
			//StartCheckTimer itself even TouchEvent is passed.
			//set repeattimer by 30ms. 
			
			
		}
		public function onBtnClick21(e:Event)
		{
			//StartCheckTimer itself even TouchEvent is passed.
			//cancel timer here.
			
		}
		
		
		
		public function onBtnClick3(e:Event)
		{
			trace('btn3 clicked');		
		}
		
		
	}
	
}
