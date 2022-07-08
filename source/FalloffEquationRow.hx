package;

class FalloffEquationRow
{
	public var outVar:String;
	public var equalsSign:String;
	public var eqn:String;
	public var Variable:String;
	public var Min:String;
	public var Max:String;
	public var theValue:String;

	public function new()
	{
		this.outVar = "";
		this.equalsSign = "=";
		this.eqn = "";
		this.Variable = "";
		this.Min = "";
		this.Max = "";
		this.theValue = "";
	}

	public function toString():String
	{
		return 'outVar: ${outVar}, equalsSign: ${equalsSign}, eqn: ${eqn}, Variable: ${Variable}, Min: ${Min}, Max: ${Max}, theValue: ${theValue}';
	}
}
