using System.Collections;
using System.Collections.Generic;
using UnityEditor.Animations;
using UnityEngine;

public class Sliding : MonoBehaviour
{

	private Vector3 position;
	private Vector3 rotation;
	private Animator anim;
	public Animator PenguinAnim;
	private bool CanSlide;
	public float seconds;

	private void Start()
	{
		anim = GetComponent<Animator>();
		CanSlide = true;
	}

	private void Update()
	{
		if (CanSlide)
		{
			if (Input.GetKeyDown(KeyCode.DownArrow))
			{
				CanSlide = false;
				anim.SetTrigger("Slide");
				PenguinAnim.SetTrigger("Slide");
				StartCoroutine(Timer());
			}

			if (Input.GetKeyDown(KeyCode.UpArrow))
			{
				PenguinAnim.SetTrigger("Jump");
			}
		}
	}

	IEnumerator Timer()
	{
		yield return new WaitForSeconds(seconds);
		CanSlide = true;
	}

}
