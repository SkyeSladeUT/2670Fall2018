using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rock : MonoBehaviour
{
	private Vector3 initialPosition;

	void Awake()
	{
		initialPosition.Set(gameObject.transform.position.x, 5f, 0f);

	}
}
