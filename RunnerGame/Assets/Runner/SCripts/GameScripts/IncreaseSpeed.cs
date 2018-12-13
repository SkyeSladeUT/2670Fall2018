using System.Collections;
using System.Collections.Generic;
using UnityEditor.Animations;
using UnityEngine;

public class IncreaseSpeed : MonoBehaviour
{
	public float seconds = 2.0f;
	public FloatData Offset;
	public FloatData Speed;
	public FloatData TimeMin;
	public FloatData TimeMax;
	
	IEnumerator Start()
	{
		while (true)
		{
			yield return new WaitForSeconds(seconds);
			if (Speed.Value < 100)
			{
				Speed.value++;
				Offset.value += .75f;
			}

			if (TimeMax.value >= 1)
			{
				TimeMax.value -= .05f;
				TimeMin.value -= .01f;
			}
		}
	}
}
