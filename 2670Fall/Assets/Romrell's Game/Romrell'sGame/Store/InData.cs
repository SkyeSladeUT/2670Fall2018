using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Data/Int")]
public class InData : ScriptableObject
{

	public int Value;

	public void addValue()
	{
		Value += 1;
	}
}
