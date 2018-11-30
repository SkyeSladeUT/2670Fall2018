using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class OnEnterKeyEvent : MonoBehaviour
{

	public UnityEvent Event;
	public KeyCode key;

	private void Update()
	{
		if (Input.GetKeyDown(key))
		{
			Event.Invoke();
		}
	}
}
