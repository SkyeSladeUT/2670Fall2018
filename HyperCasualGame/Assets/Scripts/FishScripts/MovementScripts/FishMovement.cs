using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(CharacterController))]
public class FishMovement : MonoBehaviour {

	public MovePattern movePattern;
	public MovePattern Faster;
	private MovePattern Current;
	private CharacterController controller;

	private void Start()
	{
		movePattern.MoveX.value = 5;
		Faster.MoveX.value = 20;
		controller = GetComponent<CharacterController>();
		Current = movePattern;
	}

	private void Update() {
		if (Input.GetMouseButtonDown(0))
		{
			Current = Faster;
		}
		else if (Input.GetMouseButtonUp(0))
		{
			Current = movePattern;
		}	
		Current.Invoke(controller, transform); 
	}
}
