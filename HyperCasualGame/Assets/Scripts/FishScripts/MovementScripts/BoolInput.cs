using UnityEngine;
[CreateAssetMenu]
public class BoolInput : FloatData
{
    public string InputType;

    public override float Value
    {

        get { return Input.GetButtonDown(InputType) ? value : 0; }
    }


}
