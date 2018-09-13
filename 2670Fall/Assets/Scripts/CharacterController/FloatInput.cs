using UnityEngine;
[CreateAssetMenu]
public class FloatInput : FloatData
{
    public string InputType;

    public override float Value
    {
        get {return Input.GetAxis(InputType) * value;}
<<<<<<< Updated upstream
=======
        //set{Value = value;}
>>>>>>> Stashed changes
    }
    
}
