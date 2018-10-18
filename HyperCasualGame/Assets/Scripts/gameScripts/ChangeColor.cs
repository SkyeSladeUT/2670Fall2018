using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeColor : MonoBehaviour
{

	public ColorData ActiveColor;
	private void Start()
	{
		GetComponent<Renderer>().material.color = ActiveColor.Value;
	}
}
