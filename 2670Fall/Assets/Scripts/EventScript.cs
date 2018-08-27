using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class EventScript : MonoBehaviour
{

    public UnityEvent MyEvent;
    public UnityEvent MyEvent2;

    private void OnTriggerEnter(Collider other)
    {
        MyEvent.Invoke();
    }

    private void OnTriggerExit(Collider other)
    {
        MyEvent2.Invoke();
    }
}
