using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TorpedoScript : MonoBehaviour {

	public FloatData Speed;

	void Update()
	{
		transform.Translate(Vector3.back * Speed.Value * Time.deltaTime);
	}
}
