using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UpDownMovement : MonoBehaviour
{

	public FloatData UpSpeed;
	public FloatData DownSpeed;
	public float UpSeconds;
	public float DownSeconds;
	private bool Upwards;
	private bool GameOver = false;

	void Start()
	{
		Upwards = true;
		StartCoroutine(Timer());
	}

	void Update()
	{
		if (Upwards)
		{
			transform.Translate(Vector3.up*UpSpeed.Value*Time.deltaTime);
		}

		else {
			transform.Translate(Vector3.down*DownSpeed.Value*Time.deltaTime);
		}
	}
	IEnumerator Timer()
    {
        while (!GameOver)
        {
	        if (Upwards)
	        {
		        yield return new WaitForSeconds(UpSeconds);
	        }
	        else
	        {
		        yield return new WaitForSeconds(DownSeconds);
	        }

	        if (Upwards)
            {
                Upwards = false;
            }
            else
            {
                Upwards = true;
            }
        }
    }
	
}
