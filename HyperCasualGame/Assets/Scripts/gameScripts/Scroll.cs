using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Scroll : MonoBehaviour
{

	public float speed = 0.5f;

	private void Update()
	{
		Vector2 Offset = new Vector2(Time.time*speed, 0);
		GetComponent<Renderer>().material.mainTextureOffset = Offset;
	}
}
