using UnityEngine;
[CreateAssetMenu(menuName = "Data/BoolInput")]
public class BoolInput : FloatData
{
    public string InputType;
    public KeyCode Key;

    public override float Value
    {

        get { return Input.GetKeyDown(Key) ? value : 0; }
    }


}
