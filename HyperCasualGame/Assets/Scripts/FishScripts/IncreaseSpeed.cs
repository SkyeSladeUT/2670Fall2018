using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IncreaseSpeed : MonoBehaviour
{

	public Player player;
	public float seconds = 2.0f;
	
	IEnumerator Start()
	{
		while (player.isAlive)
		{
			yield return new WaitForSeconds(seconds);
			GetComponent<FishMovement>().movePattern.MoveX.value += 1;
			GetComponent<FishMovement>().Faster.MoveX.value += 1;
		}
	}
}
