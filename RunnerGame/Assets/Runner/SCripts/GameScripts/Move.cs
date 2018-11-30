using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Move : MonoBehaviour
{

	public float addZ;
	private Vector3 position;
	
	public void MoveBack()
	{
		position = transform.position;
		position.z += addZ;
		transform.position = position;
	}
}
