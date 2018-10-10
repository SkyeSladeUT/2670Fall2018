using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Draggable : MonoBehaviour
{
	//for this to work the scene must be in 2D and the camera must be orthographic

	private Vector3 currentPosition;
	private Vector3 newPosition;
	private Camera cam;
	public bool canDrag;
	
	void Start ()
	{
		cam = Camera.main;
	}

	public IEnumerator OnMouseDown()
	{
		currentPosition = transform.position - cam.ScreenToWorldPoint(Input.mousePosition);
		yield return new WaitForFixedUpdate();
		canDrag = true;
		;
		while (canDrag)
		{
			yield return new WaitForFixedUpdate();
			newPosition = cam.ScreenToWorldPoint(Input.mousePosition) + currentPosition;
			transform.position = newPosition;
		}
	}

	private void OnMouseUp()
	{
		canDrag = false;
	}
}
