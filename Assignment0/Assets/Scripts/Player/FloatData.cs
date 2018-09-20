using UnityEngine;
[CreateAssetMenu(fileName = "NewFloat")]
public class FloatData : ScriptableObject
{
	public float value;
	public virtual float Value
	{
		get {return value;}
	}
}
