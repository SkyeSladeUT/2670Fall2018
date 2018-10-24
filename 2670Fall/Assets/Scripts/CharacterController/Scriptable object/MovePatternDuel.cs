using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

[CreateAssetMenu(menuName = "CharacterController/MovePattern/DoubleJump")]
public class MovePatternDuel : MovePattern
{

	private bool DoubleJump;
	
	public override void Invoke(CharacterController controller, Transform transform)
	{
		if (controller.isGrounded)
		{
			Move(transform);
			DoubleJump = true;
		}
		else
		{
			if (DoubleJump)
			{
				Move(transform);
				
			}
			DoubleJump = false;
			
		}
	
		Move(controller);
	}

}
