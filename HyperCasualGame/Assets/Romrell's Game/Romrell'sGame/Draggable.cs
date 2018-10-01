using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Draggable : MonoBehaviour
{
	//for this to work the scene must be in 2D and the camera must be orthographic

	private Vector3 currentPosition;
	private Vector3 newPosition;
	private Camera cam;
	
	void Start ()
	{
		cam = Camera.main;
	}

	private void OnMouseDown()
	{
		currentPosition = transform.position - cam.ScreenToWorldPoint(Input.mousePosition);
	}

	private void OnMouseDrag()
	{
		//putting our camera screen into world space
		newPosition = currentPosition + cam.ScreenToWorldPoint(Input.mousePosition);
		newPosition.z = 0;
		transform.position = newPosition;
	}
}
