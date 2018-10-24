using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class Snap : MonoBehaviour
{
	public FloatData HoldTime;
	private Transform parent;
	public FloatData Speed;
	private bool CanRun = true;

	private void OnTriggerEnter(Collider other)
	{
		parent = other.transform;
	}

	public void Call()
	{
		StartCoroutine(MoveTo());
		StartCoroutine(Stop());
	}

	IEnumerator MoveTo()
	{
		while (CanRun)
		{
			yield return new WaitForFixedUpdate();
			transform.position = Vector3.Lerp(transform.position, parent.position, Speed.Value);
		}

		transform.parent = parent;
	}

	IEnumerator Stop()
	{
		yield return new WaitForSeconds(HoldTime.Value);
		CanRun = false;
	}
}
