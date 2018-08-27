using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndGame : MonoBehaviour
{

	public FloatData Health;

	// Use this for initialization
	void Start () {
		if (Health.Value < 0)
		{
			//End Game
		}
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
