using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Timer : MonoBehaviour
{
    public float TimeLeft;
    public UnityEvent Event;

    IEnumerator Start()
    {
        while (TimeLeft > 0)
        {
            TimeLeft--;
            yield return new WaitForSeconds(1);
        }
        Event.Invoke();
    }
}
