using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Objects/Debug")]
public class DebugObject : ScriptableObject
{
    public string String;

    public void Call()
    {
        Debug.Log(String);
    }
}
