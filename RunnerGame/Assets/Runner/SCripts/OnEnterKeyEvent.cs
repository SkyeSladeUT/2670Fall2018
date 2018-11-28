using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class OnEnterKeyEvent : MonoBehaviour
{

	public UnityEvent Event;

	private void Update()
	{
		if (Input.GetKeyDown(KeyCode.Return))
		{
			Event.Invoke();
		}
	}
}
