using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CollisionScript : MonoBehaviour
{

	private Vector3 SpawnPoint;
	void Start ()
	{
		SpawnPoint = gameObject.transform.position;
	}

	private void OnCollisionEnter(Collision other)
	{
		gameObject.transform.position = SpawnPoint;
	}
}
