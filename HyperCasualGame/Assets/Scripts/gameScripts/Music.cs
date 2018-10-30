using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Music : MonoBehaviour
{

	public BoolData MusicOn;
	private AudioSource audio;

	private void Start()
	{
		audio = GetComponent<AudioSource>();
		if (MusicOn.value == true)
		{
			audio.Play();
		}
		else
		{
			audio.Stop();
		}
	}
	
}
