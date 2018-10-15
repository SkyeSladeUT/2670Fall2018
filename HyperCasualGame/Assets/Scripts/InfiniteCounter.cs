using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class InfiniteCounter : MonoBehaviour
{

	public float Seconds = 2.0f;
	public UnityEvent OnCount;

	IEnumerator Start()
	{
		while (true)
		{
			yield return new WaitForSeconds(Seconds);
			OnCount.Invoke();
		}
	}
}
