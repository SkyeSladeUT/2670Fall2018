using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthBar : MonoBehaviour
{

	public FloatData Health;

	// Use this for initialization
	void Start () {
		if (Health.Value > 0)
		{
			//Live
		}
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
