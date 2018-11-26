using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraScript : MonoBehaviour
{
	public GameObject Player;
	private Vector3 position;
	//public float Speed;
	public float Offset;
	IEnumerator Start()
	{
		while (true)
		{

			position = Player.transform.position;
			position.x = transform.position.x;
			position.y = transform.position.y;
			position.z -= Offset;
			//transform.position = Vector3.Lerp(transform.position, position, Speed);
			transform.position = position;
			yield return new WaitForFixedUpdate();
		}
	}
}
