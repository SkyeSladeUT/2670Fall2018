using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu]
public class ForEachLoop : ScriptableObject
{

    public List<FloatData> Speedoptions;
    public FloatData RandomSpeed;

    private void OnEnable()
    {
        var randomNum = Random.Range(0, Speedoptions.Count - 1);
        for (int i = 0; i < Speedoptions.Count-1; i++)
        {
            if (i == randomNum)
            {
                RandomSpeed = Speedoptions[i];
            }
        }
    }
   
}
