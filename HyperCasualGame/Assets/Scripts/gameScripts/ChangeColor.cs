using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeColor : MonoBehaviour
{

	public ColorData ActiveColor;
	private Renderer renderer;
	private int CurrentColor;
	private float speed;
	public BoolData rainbow;

	private void OnEnable()
	{
		renderer = GetComponent<Renderer>();
		if(!rainbow.value)
			renderer.material.color = ActiveColor.Value;
		CurrentColor = 0;
		speed = 0;
		if (rainbow.value)
			StartCoroutine(RainbowColor());
	}

	public IEnumerator RainbowColor()
	{
		while (rainbow.value)
		{
			if (CurrentColor == 0)
			{
				yield return new WaitForFixedUpdate();
				renderer.material.color = Color.Lerp(Color.red, Color.yellow, speed);
				speed += .01f;
				if (renderer.material.color == Color.yellow)
				{
					CurrentColor++;
					speed = 0;
				}
			}
			else if (CurrentColor == 1)
			{
				yield return new WaitForFixedUpdate();
				renderer.material.color = Color.Lerp(Color.yellow, Color.green, speed);
				speed += .01f;
				if (renderer.material.color == Color.green)
				{
					CurrentColor++;
					speed = 0;
				}
			}
			else if (CurrentColor == 2)
			{
				yield return new WaitForFixedUpdate();
				renderer.material.color = Color.Lerp(Color.green, Color.blue, speed);
				speed += .01f;
				if (renderer.material.color == Color.blue)
				{
					CurrentColor++;
					speed = 0;
				}
			}
			else
			{
				yield return new WaitForFixedUpdate();
				renderer.material.color = Color.Lerp(Color.blue, Color.red, speed);
				speed += .01f;
				if (renderer.material.color == Color.red)
				{
					CurrentColor = 0;
					speed = 0;
				}
			}
		}
	}

}
