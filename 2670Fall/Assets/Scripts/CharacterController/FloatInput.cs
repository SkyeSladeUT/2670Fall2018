﻿using UnityEngine;
[CreateAssetMenu]
public class FloatInput : FloatData
{
    public string InputType;

    public override float Value
    {
        get {return Input.GetAxis(InputType);}
        //set{Value = value;}
    }
    
}
