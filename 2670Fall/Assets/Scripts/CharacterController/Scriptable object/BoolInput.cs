using UnityEngine;
[CreateAssetMenu(menuName = "Data/BoolInput")]
public class BoolInput : FloatData
{
    public string InputType;

    public override float Value
    {

        get { return Input.GetButtonDown(InputType) ? value : 0; }
    }


}
