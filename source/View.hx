package;

import haxe.ui.containers.VBox;
import haxe.ui.events.MouseEvent;

@:build(haxe.ui.ComponentBuilder.build("assets/view.xml"))
class View extends VBox
{
	public function new()
	{
		super();
		for (i in 0...5)
		{
			falloffEquations.dataSource.add(new FalloffEquationRow());
		}
	}

	@:bind(generateButton, MouseEvent.CLICK)
	private function onGenerate(e:MouseEvent)
	{
		var rc = falloffEquations.dataSource.size;
		trace('falloffEquations.dataSource size = ${rc}');
		for (i in 0...rc)
		{
			trace('r=${falloffEquations.dataSource.get(i)}');
			if (falloffEquations.dataSource.get(i).outVar == "as")
			{
				var r = falloffEquations.getComponentAt(i).getComponentAt(0);
				var errField = r.findComponent("theError");
				errField.text = "there is an error";
				errField.show();
			}
		}
	}
}
