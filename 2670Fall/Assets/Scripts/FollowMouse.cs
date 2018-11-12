using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowMouse : MonoBehaviour
{

	public Vector3 tempPos;
	
	// Update is called once per frame
	void Update ()
	{
		tempPos = Camera.main.ScreenToWorldPoint(Input.mousePosition);
		tempPos.z = 0;
		transform.position = tempPos;
	}
}
