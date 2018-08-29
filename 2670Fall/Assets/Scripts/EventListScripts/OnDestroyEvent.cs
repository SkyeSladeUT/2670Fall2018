using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class OnDestroyEvent : MonoBehaviour
{

    public UnityEvent Event;

    private void OnDestroy()
    {
        Event.Invoke();
    }
}
