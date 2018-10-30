using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(CharacterController))]
public class FishMovement : MonoBehaviour {

	public MovePattern movePattern;
	public FloatData FasterSpeed, OriginalSpeed, SlowerSpeed, Speed;
	//public Player player;
	private CharacterController controller;
	private Vector3 NewPosition;
	private bool CanMoveVertically;
	private int VerticalLayer;

	private void Start()
	{
		movePattern.MoveX = OriginalSpeed;
		CanMoveVertically = true;
		FasterSpeed.value = 25;
		OriginalSpeed.value = 10;
		SlowerSpeed.value = 5;
		VerticalLayer = 0;
		controller = GetComponent<CharacterController>();
	}

	private void Update() {
		//if (!player.isBoost)
		//{
			if (Input.GetKeyDown(KeyCode.RightArrow))
			{
				movePattern.MoveX = FasterSpeed;
			}
			else if (Input.GetKeyUp(KeyCode.RightArrow))
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
		//}

		if (CanMoveVertically)
		{
			if (Input.GetKeyDown(KeyCode.UpArrow) && VerticalLayer < 3)
			{
				NewPosition = transform.position;
				NewPosition.y += 2;
				CanMoveVertically = false;
				VerticalLayer += 1;
				StartCoroutine(VerticalMoveUp());
			}
			else if (Input.GetKeyDown(KeyCode.DownArrow) && VerticalLayer > -3)
			{
				NewPosition = transform.position;
				NewPosition.y -= 2;
				CanMoveVertically = false;
				VerticalLayer -= 1;
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
