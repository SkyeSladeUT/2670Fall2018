using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IncreaseSpeed : MonoBehaviour
{
	public float seconds = 2.0f;
	public FloatData TimeMin, TimeMax, Offset;
	
	IEnumerator Start()
	{
		while (true)
		{
			yield return new WaitForSeconds(seconds);
			if (GetComponent<FishMovement>().OriginalSpeed.Value < 25)
			{
				GetComponent<FishMovement>().OriginalSpeed.value++;
				GetComponent<FishMovement>().FasterSpeed.value++;
				GetComponent<FishMovement>().SlowerSpeed.value++;
				Offset.value++;
			}

			if (TimeMin.Value > .1f)
			{
				TimeMin.value -= .1f;
			}

			if (TimeMax.Value > .5f)
			{
				TimeMax.value -= .1f;
			}
		}
	}
}
