using UnityEngine;
[CreateAssetMenu]
public class BoolInput : FloatData
{
    public string InputType;
    public override float Value
    {
<<<<<<< Updated upstream
        get { return Input.GetButtonDown(InputType) ? value : 0; }
=======
        get { return Input.GetButton(InputType) ? value : 0; }
>>>>>>> Stashed changes
    }
    
    
}
