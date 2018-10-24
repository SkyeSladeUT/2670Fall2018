using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Scroll : MonoBehaviour
{

	public float speed = 0.5f;
	public Player player;
	private Vector2 Offset;

	private void Update()
	{
		/*if (player.isBoost)
		{
			Offset = new Vector2(Time.time*speed*2, 0);
			GetComponent<Renderer>().material.mainTextureOffset = Offset;
		}
		else*/
		//{
			Offset = new Vector2(Time.time * speed, 0);
			GetComponent<Renderer>().material.mainTextureOffset = Offset;
		//}
	}
}
