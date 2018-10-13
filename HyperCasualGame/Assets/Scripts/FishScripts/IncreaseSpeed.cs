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
			GetComponent<FishMovement>().OriginalSpeed.value += 1;
			GetComponent<FishMovement>().FasterSpeed.value += 1;
			GetComponent<FishMovement>().SlowerSpeed.value += 1;
		}
	}
}
