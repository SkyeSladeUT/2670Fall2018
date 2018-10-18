using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraScript : MonoBehaviour
{
	public GameObject Player;
	private Vector3 position;
	public float Speed;
	public float Offset;
	IEnumerator Start()
	{
		while (true)
		{
			position = Player.transform.position;
			position.x += Offset;
			position.y = 0;
			position.z = transform.position.z;
			transform.position = Vector3.Lerp(transform.position, position, Speed);
			yield return new WaitForFixedUpdate();
		}
	}
}
