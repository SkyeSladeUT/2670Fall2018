using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(CharacterController))]
public class FishMovement : MonoBehaviour {

	public MovePattern movePattern;
	public FloatData FasterSpeed, OriginalSpeed, SlowerSpeed, Speed;
	private CharacterController controller;
	private Vector3 NewPosition;
	private bool CanMoveVertically;

	private void Start()
	{
		CanMoveVertically = true;
		controller = GetComponent<CharacterController>();
	}

	private void Update() {
		if (Input.GetKeyDown(KeyCode.RightArrow) || Input.GetMouseButtonDown(0))
		{
			movePattern.MoveX = FasterSpeed;
		}
		else if (Input.GetKeyUp(KeyCode.RightArrow) || Input.GetMouseButtonUp(0))
		{
			movePattern.MoveX = OriginalSpeed;
		}
		else if (Input.GetKeyDown(KeyCode.LeftArrow))
		{
			movePattern.MoveX = SlowerSpeed;
		}
		else if (Input.GetKeyUp(KeyCode.LeftArrow))
		{
			movePattern.MoveX = OriginalSpeed;
		}

		if (CanMoveVertically)
		{
			if (Input.GetKeyDown(KeyCode.UpArrow))
			{
				NewPosition = transform.position;
				NewPosition.y += 2;
				CanMoveVertically = false;
				StartCoroutine(VerticalMoveUp());
			}
			else if (Input.GetKeyDown(KeyCode.DownArrow))
			{
				NewPosition = transform.position;
				NewPosition.y -= 2;
				CanMoveVertically = false;
				StartCoroutine(VerticalMoveDown());
			}
		}

		movePattern.Invoke(controller, transform); 
	}

	private IEnumerator VerticalMoveUp()
	{
		while (transform.position.y <= NewPosition.y)
		{
			transform.Translate(Vector3.up*Time.deltaTime*Speed.Value);
			yield return new WaitForFixedUpdate();
		}

		CanMoveVertically = true;
	}
	
	private IEnumerator VerticalMoveDown()
	{
		while (transform.position.y >= NewPosition.y)
		{
			transform.Translate(Vector3.down*Time.deltaTime*Speed.Value);
			yield return new WaitForFixedUpdate();
		}

		CanMoveVertically = true;
	}
}
