package custom;

import haxe.ui.core.ItemRenderer;
import haxe.ui.events.UIEvent;

@:build(haxe.ui.ComponentBuilder.build("assets/value-and-error-renderer.xml"))
class ValueAndErrorRenderer extends ItemRenderer
{
	public function new()
	{
		super();
	}

	@:bind(theValue, UIEvent.CHANGE)
	private function onValue(_)
	{
		trace('onValue data=${this.data} id=${this.id} value=${theValue.text}');
		if (theError != null)
		{
			theError.text = null;
			theError.hide();
		}
		if (this.data != null)
		{
			Reflect.setField(this.data, this.id, theValue.text);
			onDataChanged(this.data);
		}
	}

	private override function onDataChanged(data:Dynamic)
	{
		super.onDataChanged(data);
		// Commented out the below because theValue is really just a passthru for the
		// input of data. It's never used from the code dataSource side. I think ....
		// theValue.text = Std.string(Reflect.field(data, this.id));
	}
}
