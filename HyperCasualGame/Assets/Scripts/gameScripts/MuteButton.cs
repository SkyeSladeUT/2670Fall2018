using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Experimental.UIElements;

public class MuteButton : MonoBehaviour
{

	public BoolData MusicOn;
	public GameObject On, Off;
	private AudioSource audio;

	private void Start()
	{
		audio = GetComponent<AudioSource>();
		if (MusicOn.value == true)
		{
			On.SetActive(true);
			Off.SetActive(false);
			audio.Play();
		}
		else
		{
			On.SetActive(false);
			Off.SetActive(true);
			audio.Stop();
		}
	}

	public void ChangeSound()
	{
		if (MusicOn.value == true)
		{
			MusicOn.value = false;
			On.SetActive(false);
			Off.SetActive(true);
			audio.Stop();
		}
		else
		{
			MusicOn.value = true;
			Off.SetActive(false);
			On.SetActive(true);
			audio.Play();
		}
	}
}
