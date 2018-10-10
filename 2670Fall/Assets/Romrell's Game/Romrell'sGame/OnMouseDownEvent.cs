using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class OnMouseDownEvent : MonoBehaviour
{

	public UnityEvent Event;

	private void OnMouseDown()
	{
		Event.Invoke();
	}
}
