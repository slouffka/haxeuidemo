package;

import openfl.display.Sprite;

import haxe.ui.Toolkit;
import haxe.ui.macros.ComponentMacros;
import haxe.ui.containers.Box;
import haxe.ui.events.UIEvent;


class Main extends Sprite
{
  private var ui:Dynamic;

	public function new()
	{
		super();

		Toolkit.init();

		createUI();
	}

	private function createUI():Void
	{
    ui = ComponentMacros.buildComponent("Assets/ui/demo.xml");
    ui.registerEvent(UIEvent.READY, onReady);
    addChild(ui);
	}

  private function onReady(event:UIEvent):Void
  {
    trace('onReady -> ui: $ui');
    trace('onReady -> event: $event');
  }
}
