using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu]
public class FloatBool : FloatInput
{
    public override float Value
    {
        get
        {
            if (Input.GetButton("Jump"))
            {
                return value;
            }

            return 0;
        }

    }
}
