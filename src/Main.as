package
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author MegaOrion
	 */
	public class Main extends Sprite 
	{
		private const w: uint = 800;
		private const h: uint = 600;
		private var X: uint = w/2;
		private var Y: uint = h/2;
		private var _isDown:Boolean = false;
		private var obj:  Sprite = new Sprite();
		private var color: Number = 0x000000;				
		
		public function Main() 
		{
			drawObj();
			stage.addChild(obj);			
			obj.addEventListener(MouseEvent.MOUSE_DOWN, onDown);
			obj.addEventListener(MouseEvent.MOUSE_UP, onUp);		
		}
		
		private function drawObj(): void {			
			obj.graphics.beginFill(color);
		    obj.graphics.drawCircle(X, Y, 50);
		    obj.graphics.endFill();
		}
		
		private function onDown(e:MouseEvent): void {			
			_isDown = true;
			color = _isDown ? 0xffff00 : 0x0000ff;
			drawObj();
			obj.startDrag();
		}
		
		private function onUp(e:MouseEvent): void {			
			_isDown = false;
			color = _isDown ? 0xffff00 : 0x0000ff;
			drawObj();
			obj.stopDrag();
		}
	}	
}